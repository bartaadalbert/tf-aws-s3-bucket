data "aws_caller_identity" "current" {}

data "aws_canonical_user_id" "current" {}

resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.terraform_bucket.id

  policy = jsonencode({
    Version = "2012-10-17",
    Id      = "MyBucketPolicy",
    Statement = [
      {
        Sid       = "GrantReadPrivileges",
        Effect    = "Allow",
        Principal = {
          AWS = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"
        },
        Action = [
          "s3:GetObject",
          "s3:ListBucket"
        ],
        Resource = [
          aws_s3_bucket.terraform_bucket.arn,
          "${aws_s3_bucket.terraform_bucket.arn}/*"
        ]
      }
    ]
  })
}

resource "aws_s3_bucket" "terraform_bucket" {
  bucket = "${var.bucket_name}-${random_string.suffix.result}"

  tags = {
    Name        = var.bucket_name
    Environment = var.bucket_environment
  }
}

resource "random_string" "suffix" {
  length  = 8
  special = false
  upper   = false
}
