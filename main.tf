resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "sk_My_bucket"
    Environment = "Dev"
  }
}
