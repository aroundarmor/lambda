import json
from echo_sourav import hello_sourav

def lambda_handler(event, context):
    message = hello_sourav()
    return {
        'statusCode': 200,
        'body': json.dumps(message)
    }