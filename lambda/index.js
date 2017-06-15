'use strict';
const AWS = require('aws-sdk');

const createResponse = (statusCode, body) => {
    return {
        statusCode: statusCode,
        body: body
    }
};

exports.put = (event, context, callback) => {
    console.log(`PUT ITEM SUCCEEDED WITH doc = ${JSON.stringify(event)}`);
    callback(null, createResponse(200, {"I got":"Into Lambda"}));
};
