resource "aws_dynamodb_table" "my_table" {
  name           = "AzniSampleTable"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"
  range_key      = "title"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "title"
    type = "S"
  }

  tags = {
    Environment = "Dev"
  }
}

output "dynamodb_table_arn" {
  value = aws_dynamodb_table.my_table.arn
}