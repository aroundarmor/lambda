module "lambda_function" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "~> 3.0" # Check for the latest version on the Terraform Registry

  function_name = "dev-my-name"
  description   = "My Dev Lambda Function"
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.9"               # Specify the runtime as Python 3.9
  source_path   = "src/lambda_function.zip" # Zip file containing the lambda function

  memory_size = 128
  timeout     = 30

  environment_variables = {
    LOG_LEVEL = "DEBUG"
  }

  # create_role     = true
  # role_name       = "dev-my-name-lambda-role"
  # attach_policies = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"] # Basic execution policy
}