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
exports.lambdaStoreToDBHandler = void 0;
const AWS = require("aws-sdk");
const dynamodb = new AWS.DynamoDB.DocumentClient({ region: 'eu-central-1' });
const tableName = 'akobr-test-account';
const lambdaStoreToDBHandler = (event) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        // Enumerate through all records
        for (const record of event) {
            yield dynamodb.put({ TableName: tableName, Item: record }).promise();
        }
        return {
            statusCode: 200,
            body: JSON.stringify({ message: 'Data stored successfully' }),
        };
    }
    catch (error) {
        console.error('Error storing data:', error);
        return {
            statusCode: 500,
            body: JSON.stringify({ message: 'An error occurred while storing data' }),
        };
    }
});
exports.lambdaStoreToDBHandler = lambdaStoreToDBHandler;
//# sourceMappingURL=app.js.map