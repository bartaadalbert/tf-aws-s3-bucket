terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}

provider "aws" {
  access_key = (var.AWS_ACCESS_KEY != "" && var.AWS_SECRET_KEY != "") ? var.AWS_ACCESS_KEY : null
  secret_key = (var.AWS_ACCESS_KEY != "" && var.AWS_SECRET_KEY != "") ? var.AWS_SECRET_KEY : null
  profile    = (var.AWS_ACCESS_KEY == "" || var.AWS_SECRET_KEY == "") ? var.AWS_PROFILE : null
  region     = var.AWS_REGION
}
