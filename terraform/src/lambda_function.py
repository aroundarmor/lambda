def lambda_handler(event, context):
    message = "hey! I'm new function"
    print(message)
    
    return {
        'statusCode': 200,
        'body': message
    }