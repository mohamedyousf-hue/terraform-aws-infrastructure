def handler(event, context):
    print("Hello from Terraform Lambda!")
    return {
        "statusCode": 200,
        "body": "Lambda executed successfully"
    }