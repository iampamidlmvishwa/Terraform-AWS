resource "aws_s3_bucket" "demo" {

  bucket = "vishwatechlabs-demo-bucket-12345"

  tags = {

    Name        = "vishwatechlabs-s3"
    Environment = "Dev"
    ManagedBy   = "Terraform"

  }

}
