   output "bucket_name" {
     value = aws_s3_bucket.terraform_bucket.bucket
     description = "The name of the S3 bucket."
   }

   output "bucket_arn" {
     value = aws_s3_bucket.terraform_bucket.arn
     description = "The ARN of the S3 bucket."
   }
  
   output "bucket_region" {
     value = aws_s3_bucket.terraform_bucket.region
     description = "The AWS region where the S3 bucket resides."
   }
