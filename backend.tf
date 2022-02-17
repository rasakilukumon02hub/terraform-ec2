terraform {
  backend "s3" {
    bucket = "backend-file"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-dynamo-db"
  }
}
