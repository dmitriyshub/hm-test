import boto3

aws_access_key_id="access key"
aws_secret_access_key="secretkey"
aws_session_token="sesion token"
def create_table():
    session = boto3.Session(
        region_name="us-west-2",
        aws_access_key_id=aws_access_key_id,
        aws_secret_access_key=aws_secret_access_key,
        aws_session_token=aws_session_token
    )

    dynamodb = session.resource('dynamodb')


    table = dynamodb.create_table(
        TableName='Users',
        KeySchema=[
            {
                'AttributeName': 'id',
                'KeyType': 'HASH'
            },
        ],
        AttributeDefinitions=[
            {
                'AttributeName': 'id',
                'AttributeType': 'N'
            },
        ],
        ProvisionedThroughput={
            'ReadCapacityUnits': 1,
            'WriteCapacityUnits': 1,
        }
    )

    print("Table status:", table.table_status)

    # Wait until the table exists.
    table.wait_until_exists()
    # Print out some data about the table.
    print(table.item_count)

if __name__ == '__main__':
    create_table()