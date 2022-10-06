    2  aws configure
    3  curl http://169.254.169.254/latest/dynamic/instance-identity/document | grep region
    4  aws configure
    5  aws s3 mb s3://<cafe-xxxnnn> --region <region>
    6  aws s3 mb s3://cafe-dimon --region us-west-2
    7  ls
    8  ls -l
    9  ls initial-images
   10  aws s3 sync ~/initial-images s3://cafe-dimon/images
   11  aws s3 ls s3://cafe-dimon/images/
   12  aws s3 ls s3://cafe-dimon/images/ --human-readable
   13  aws s3 ls s3://cafe-dimon/images/ --human-readable --summarize
   14  history
   15  ls
   16  vi s3EventNotification.json
   17   aws s3api put-bucket-notification-configuration --bucket cafe-dimon --notification-configuration file://s3EventNotification.json
   18  aws configure list
   19  aws configure
   20  aws configure list
   21  ls
   22  ls new-images
   23  aws s3api put-object --bucket cafe-dimon --key images/Caramel-Delight.jpg --body ~/new-images/Caramel-Delight.jpg
   24   aws s3api get-object --bucket <cafe-xxxnnn> --key images/Donuts.jpg Donuts.jpg
   25   aws s3api get-object --bucket cafe-dimon --key images/Donuts.jpg Donuts.jpg
   26  ls
   27   aws s3api get-object --bucket cafe-dimon --key images/Donuts.jpg Donuts2.jpg
   28   aws s3api delete-object --bucket <cafe-xxxnnn> --key images/Strawberry-Tarts.jpg
   29   aws s3api delete-object --bucket cafe-dimon --key images/Strawberry-Tarts.jpg
   30   aws s3api put-object-acl --bucket <cafe-xxxnnn> --key images/Donuts.jpg --acl public-read
   31   aws s3api put-object-acl --bucket cafe-dimon --key images/Donuts.jpg --acl public-read


"""
topic policy:
{
  "Version": "2008-10-17",
  "Id": "S3PublishPolicy",
  "Statement": [
    {
      "Sid": "AllowPublishFromS3",
      "Effect": "Allow",
      "Principal": {
        "Service": "s3.amazonaws.com"
      },
      "Action": "SNS:Publish",
      "Resource": "<ARN of s3NotificationTopic>",
      "Condition": {
        "ArnLike": {
          "aws:SourceArn": "arn:aws:s3:*:*:<cafe-xxxnnn>"
        }
      }
    }
  ]
}
"""

"""
an event notification configuration file that identifies the events that Amazon S3 will publish
and the topic destination where Amazon S3 will send the event notifications.
You then use the s3api CLI to associate this configuration file with the Amazon S3 share bucket.
new file named s3EventNotification.json
{
  "TopicConfigurations": [
    {
      "TopicArn": "<ARN of s3NotificationTopic>",
      "Events": ["s3:ObjectCreated:*","s3:ObjectRemoved:*"],
      "Filter": {
        "Key": {
          "FilterRules": [
            {
              "Name": "prefix",
              "Value": "images/"
            }
          ]
        }
      }
    }
  ]
}
"""
aws s3api put-bucket-notification-configuration --bucket <cafe-xxxnnn> --notification-configuration file://s3EventNotification.json

aws s3api put-object --bucket <cafe-xxxnnn> --key images/Caramel-Delight.jpg --body ~/new-images/Caramel-Delight.jpg

aws s3api get-object --bucket <cafe-xxxnnn> --key images/Donuts.jpg Donuts.jpg

aws s3api delete-object --bucket <cafe-xxxnnn> --key images/Strawberry-Tarts.jpg

aws s3api put-object-acl --bucket <cafe-xxxnnn> --key images/Donuts.jpg --acl public-read


