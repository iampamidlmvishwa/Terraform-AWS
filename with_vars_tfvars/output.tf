output "s3_bucket_name" {

  description = "S3 Bucket Name"

  value = aws_s3_bucket.demo.bucket

}

output "s3_bucket_arn" {

  description = "S3 Bucket ARN"

  value = aws_s3_bucket.demo.arn

}

output "vpc_id" {

  description = "VPC ID"

  value = aws_vpc.main.id

}

output "vpc_cidr" {

  description = "VPC CIDR Block"

  value = aws_vpc.main.cidr_block

}
