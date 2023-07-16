resource "aws_s3_bucket" "example" {
  bucket = "sk-my-bucket"

  tags = {
    Name        = "sk-my-bucket"
    Environment = "Dev"
  }
}
