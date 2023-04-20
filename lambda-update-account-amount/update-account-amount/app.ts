interface IAccount {
  id: number
  date: string
  accountId: number
  amount: number
}

export const lambdaUpdateAccountAmountHandler = async (
  event: any,
): Promise<any> => {
  console.log('Event:', event)
  // Return 400 if no id provided
  if (!event) {
    return {
      statusCode: 404,
      body: JSON.stringify({ message: 'No id provided' }),
    }
  }
  const item = event
  // Check if account has an amount and accountId
  if (!item.amount || !item.accountId) {
    return {
      statusCode: 400,
      body: JSON.stringify({ message: 'No amount provided' }),
    }
  }
  item.amount = parseInt(item.amount)
  item.accountId = parseInt(item.accountId)
  // Increment amount by MUL env. variable
  item.amount = item.amount * Number(process.env.MUL)
  item.id = new Date().getTime()
  try {
    return {
      statusCode: 200,
      body: event,
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
