import {
  APIGatewayProxyResult,
  EventBridgeEvent,
  S3ObjectCreatedNotificationEventDetail,
} from 'aws-lambda'
import { S3 } from 'aws-sdk'
import { ParseResult, parse } from 'papaparse'

/**
 *
 * Event doc: https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-lambda-proxy-integrations.html#api-gateway-simple-proxy-for-lambda-input-format
 * @param {Object} event - API Gateway Lambda Proxy Input Format
 *
 * Return doc: https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-lambda-proxy-integrations.html
 * @returns {Object} object - API Gateway Lambda Proxy Output Format
 *
 */

interface IAccount {
  id: number
  date: string
  accountId: number
  amount: number
  type: string
}

export const lambdaHandler = async (
  event: EventBridgeEvent<any, S3ObjectCreatedNotificationEventDetail>,
): Promise<any> => {
  try {
    // console.log(`Uploaded file: ${event.detail.object.key}`)
    // Get bucket name
    const bucketName = event.detail.bucket.name
    // Get file name
    const fileName = event.detail.object.key
    // Read CSV data from S3 bucket by it's name
    const s3 = new S3({ region: 'eu-central-1' })
    const data = await s3
      .getObject({ Bucket: bucketName, Key: fileName })
      .promise()
    // If is file empty return emtyp response
    let result: Array<IAccount> = []
    if (data.Body) {
      const csvFileBody = data.Body.toString()
      console.log(csvFileBody)
      const parsed: ParseResult<any> = parse(csvFileBody)
      result = parsed.data.map((item) => ({
        id: parseInt(item[0]),
        date: item[1],
        accountId: parseInt(item[2]),
        amount: parseInt(item[3]),
        type: 'I',
      }))
    }
    return {
      statusCode: 200,
      body: result,
    }
  } catch (err) {
    console.log(err)
    return {
      statusCode: 500,
      body: JSON.stringify({
        message: 'some error happened',
      }),
    }
  }
}
