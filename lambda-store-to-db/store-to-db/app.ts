import { APIGatewayProxyEvent, APIGatewayProxyResult } from 'aws-lambda'
import * as AWS from 'aws-sdk'

const dynamodb = new AWS.DynamoDB.DocumentClient({ region: 'eu-central-1' })
const tableName = 'akobr-test-account'

export interface IAccount {
  id: number
  date: string
  accountId: number
  amount: number
}
export const lambdaStoreToDBHandler = async (event: {
  body: Array<IAccount>
}): Promise<APIGatewayProxyResult> => {
  console.log('Event:', event)
  if (!event.body) {
    return {
      statusCode: 400,
      body: JSON.stringify({ message: 'No data provided' }),
    }
  }
  try {
    // If event,body is not an array, make it an array
    if (!Array.isArray(event.body)) {
      event.body = [event.body]
    }
    // Enumerate through all records
    for (const record of event.body) {
      await dynamodb.put({ TableName: tableName, Item: record }).promise()
    }

    return {
      statusCode: 200,
      body: JSON.stringify({ message: 'Data stored successfully' }),
    }
  } catch (error) {
    console.error('Error storing data:', error)

    return {
      statusCode: 500,
      body: JSON.stringify({ message: 'An error occurred while storing data' }),
    }
  }
}
