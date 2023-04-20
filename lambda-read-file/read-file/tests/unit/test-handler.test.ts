// import {
//     APIGatewayProxyEvent,
//     APIGatewayProxyResult,
//     EventBridgeEvent,
//     S3ObjectCreatedNotificationEventDetail,
// } from 'aws-lambda';
// import { lambdaHandler } from '../../app';
// import { expect, describe, it } from '@jest/globals';
//
// describe('Unit test for app handler', function () {
//     it('verifies successful response', async () => {
//         const event: EventBridgeEvent<any, S3ObjectCreatedNotificationEventDetail> = {
//             version: '0',
//             id: '876496bc-68bc-3f9c-0f51-7f5ccf4d4f08',
//             'detail-type': 'Object Created',
//             source: 'aws.s3',
//             account: '582242502570',
//             time: '2023-04-15T14:58:22Z',
//             region: 'eu-central-1',
//             resources: ['arn:aws:s3:::akobr-test-bucket'],
//             detail: {
//                 version: '0',
//                 bucket: {
//                     name: 'akobr-test-bucket',
//                 },
//                 object: {
//                     key: 'test7.csv',
//                     size: 110,
//                     etag: '9aaa7b5840222f5aa2b10bdc09b00ef9',
//                     sequencer: '00643ABB8E446D6E63',
//                 },
//                 'request-id': 'RTJPRKH0HB5BA8XM',
//                 requester: '582242502570',
//                 'source-ip-address': '85.160.43.193',
//                 reason: 'PutObject',
//             },
//         };
//         const result: APIGatewayProxyResult = await lambdaHandler(event);
//
//         expect(result.statusCode).toEqual(200);
//         expect(result.body).toEqual(
//             JSON.stringify({
//                 message: 'hello world',
//             }),
//         );
//     });
// });
