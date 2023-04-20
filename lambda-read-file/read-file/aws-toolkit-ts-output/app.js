"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.lambdaHandler = void 0;
const aws_sdk_1 = require("aws-sdk");
const papaparse_1 = require("papaparse");
const lambdaHandler = (event) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        // console.log(`Uploaded file: ${event.detail.object.key}`)
        // Get bucket name
        const bucketName = event.detail.bucket.name;
        // Get file name
        const fileName = event.detail.object.key;
        // Read CSV data from S3 bucket by it's name
        const s3 = new aws_sdk_1.S3({ region: 'eu-central-1' });
        const data = yield s3
            .getObject({ Bucket: bucketName, Key: fileName })
            .promise();
        // If is file empty return emtyp response
        let result = [];
        if (data.Body) {
            const csvFileBody = data.Body.toString();
            console.log(csvFileBody);
            const parsed = (0, papaparse_1.parse)(csvFileBody);
            result = parsed.data.map((item) => ({
                id: parseInt(item[0]),
                date: item[1],
                accountId: parseInt(item[2]),
                amount: item[3],
            }));
        }
        return {
            statusCode: 200,
            body: JSON.stringify(result),
        };
    }
    catch (err) {
        console.log(err);
        return {
            statusCode: 500,
            body: JSON.stringify({
                message: 'some error happened',
            }),
        };
    }
});
exports.lambdaHandler = lambdaHandler;
//# sourceMappingURL=app.js.map