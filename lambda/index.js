var AWS = require('aws-sdk');
var s3 = new AWS.S3();

const tableName = process.env.S3_BUCKET;

exports.handler = (event, context, callback) => {
    console.log(JSON.stringify(event));

    s3.putObject({
            Bucket: tableName,
            Key: 'event-log.' + Date.now() + '.log',
            Body: JSON.stringify(event)
        },
        (err) => {
            callback(err);
        });
};
