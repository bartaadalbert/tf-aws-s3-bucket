## Terraform AWS S3 Bucket Module

This Terraform module provisions an AWS S3 bucket with configurable access controls.

### Prerequisites

- Terraform v0.14+ (or your current version)
- AWS account (awscli)

### Usage

```hcl
module "s3_bucket" {
  source = "github.com/bartaadalbert/tf-aws-s3-bucket"

  AWS_REGION      = "eu-central-1"
  AWS_PROFILE     = "default"
  bucket_name     = "my-unique-bucket-name"
  bucket_environment = "production"
  bucket_acl      = "private"
}

```

Replace `<YOUR_GITHUB_USERNAME>` with your GitHub username, and adjust the other module parameters as needed.

### Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| AWS_REGION | AWS region where the resources will be created. | `string` | `"eu-central-1"` |
| AWS_PROFILE | AWS CLI profile name to be used. | `string` | `"default"` |
| bucket_name | Name of the S3 bucket. | `string` | `"terraform-bucket"` |
| bucket_environment | Environment tag for the S3 bucket. | `string` | `"develop"` |
| bucket_acl | The Access Control List (ACL) for the S3 bucket. Valid values are `"private"`, `"public-read"`, etc. | `string` | `"private"` |

### Outputs

| Name | Description |
|------|-------------|
| bucket_name | The name of the created S3 bucket. |
| bucket_arn | The Amazon Resource Name (ARN) of the S3 bucket. |
| bucket_website_url | The website endpoint URL of the S3 bucket (if configured as a website). |
| bucket_acl | The Access Control List (ACL) set for the S3 bucket. |
| bucket_region | The AWS region where the S3 bucket is located. |

## Contributions

Contributions are welcome! If you encounter any issues or have ideas for improvements, feel free to open an issue or submit a pull request.
License
This project is licensed under the MIT License.
Feel free to further customize the README to provide more specific information about your project or any additional instructions.