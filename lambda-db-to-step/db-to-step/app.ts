import {
  APIGatewayProxyEvent,
  APIGatewayProxyResult,
  DynamoDBStreamEvent,
} from 'aws-lambda'
import { StepFunctions } from 'aws-sdk'

const stepFunctions = new StepFunctions()

interface IAccount {
  id: number
  date: string
  accountId: number
  amount: number
}

export const lambdaDBToStepHandler = async (
  event: DynamoDBStreamEvent,
): Promise<APIGatewayProxyResult> => {
  console.log(
    `Environment variable STEP_FUNC_ARN: ${process.env.STEP_FUNC_ARN}`,
  )
  // Return 500 if STEP_FUNC_ARN is not set
  if (!process.env.STEP_FUNC_ARN) {
    return {
      statusCode: 500,
      body: JSON.stringify({ message: 'STEP_FUNC_ARN is not set' }),
    }
  }

  try {
    for (const record of event.Records) {
      console.log(`Processing DynamoDB record: ${record.eventName}`)
      // If record is not INSERT, skip it
      if (
        record.eventName !== 'INSERT' ||
        !record.dynamodb ||
        !record.dynamodb?.NewImage
      ) {
        continue
      }

      const amount = record.dynamodb.NewImage.amount.N
      const id = record.dynamodb.NewImage.id.N
      const date = record.dynamodb.NewImage.date.S
      const accountId = record.dynamodb.NewImage.accountId.N
      const type = record.dynamodb.NewImage.type.S
      // Continue only if type is I -> inserted
      if (type !== 'I') {
        continue
      }
      const account = { amount, id, date, accountId, type: 'U' }
      console.log(`Account: ${JSON.stringify(account)}`)

      const response = await stepFunctions
        .startExecution({
          stateMachineArn: process.env.STEP_FUNC_ARN,
          input: JSON.stringify(account),
        })
        .promise()

      console.log(`Started Step Function execution: ${response.executionArn}`)
    }
    return {
      statusCode: 200,
      body: JSON.stringify({
        message: 'Finished processing DynamoDB records',
      }),
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
