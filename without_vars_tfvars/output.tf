output "bucket_name" {

  value = aws_s3_bucket.demo.bucket

}

output "vpc_id" {

  value = aws_vpc.main.id

}

output "vpc_cidr" {

  value = aws_vpc.main.cidr_block

}
