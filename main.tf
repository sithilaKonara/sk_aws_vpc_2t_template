resource "aws_s3_bucket" "example" {
  bucket = "sk_my_bucket"

  tags = {
    Name        = "sk_my_bucket"
    Environment = "Dev"
  }
}
