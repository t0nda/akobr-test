var __defProp = Object.defineProperty;
var __getOwnPropDesc = Object.getOwnPropertyDescriptor;
var __getOwnPropNames = Object.getOwnPropertyNames;
var __hasOwnProp = Object.prototype.hasOwnProperty;
var __export = (target, all) => {
  for (var name in all)
    __defProp(target, name, { get: all[name], enumerable: true });
};
var __copyProps = (to, from, except, desc) => {
  if (from && typeof from === "object" || typeof from === "function") {
    for (let key of __getOwnPropNames(from))
      if (!__hasOwnProp.call(to, key) && key !== except)
        __defProp(to, key, { get: () => from[key], enumerable: !(desc = __getOwnPropDesc(from, key)) || desc.enumerable });
  }
  return to;
};
var __toCommonJS = (mod) => __copyProps(__defProp({}, "__esModule", { value: true }), mod);

// app.ts
var app_exports = {};
__export(app_exports, {
  lambdaUpdateAccountAmountHandler: () => lambdaUpdateAccountAmountHandler
});
module.exports = __toCommonJS(app_exports);
var lambdaUpdateAccountAmountHandler = async (event) => {
  console.log("Event:", event);
  if (!event) {
    return {
      statusCode: 404,
      body: JSON.stringify({ message: "No id provided" })
    };
  }
  const item = event;
  if (!item.amount || !item.accountId) {
    return {
      statusCode: 400,
      body: JSON.stringify({ message: "No amount provided" })
    };
  }
  item.amount = parseInt(item.amount);
  item.accountId = parseInt(item.accountId);
  item.amount = item.amount * Number(process.env.MUL);
  item.id = new Date().getTime();
  try {
    return {
      statusCode: 200,
      body: event
    };
  } catch (err) {
    console.log(err);
    return {
      statusCode: 500,
      body: JSON.stringify({
        message: "some error happened"
      })
    };
  }
};
// Annotate the CommonJS export names for ESM import in node:
0 && (module.exports = {
  lambdaUpdateAccountAmountHandler
});
