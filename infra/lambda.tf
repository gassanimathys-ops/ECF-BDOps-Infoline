resource "aws_lambda_function" "login_function" {
  function_name = "login-function"
  role          = "arn:aws:iam::123456789012:role/LambdaRole" # rôle IAM Lambda
  handler       = "index.handler"
  runtime       = "nodejs24.x"

  filename = "lambda/login.zip" # archive contenant le code
}

resource "aws_lambda_permission" "api_gateway" {
  statement_id  = "AllowAPIGatewayInvoke"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.login_function.function_name
  principal     = "apigateway.amazonaws.com"
}