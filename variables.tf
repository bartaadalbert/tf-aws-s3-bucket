variable "AWS_ACCESS_KEY" {
  type        = string
#   default     = "AKIXXXXXXXXXXXXXXXXXXXXX"
  default     = ""
  description = "AWS access key"
}
variable "AWS_SECRET_KEY" {
  type        = string
#   default     = "xXX/Yyyy+xxxxxxxxxxxxxxxxxxxxxxxxxx"
  default     = ""
  description = "AWS secret kry"
}

variable "AWS_REGION" {
    type        = string
    default     = "eu-central-1"
}
variable "AWS_PROFILE" {
    type        = string
    default     = "default"
}

variable "bucket_name" {
    type        = string
    default     = "my-terraform-bucket"
}

variable "bucket_environment" {
    type        = string
    default     = "develop"
}

variable "bucket_acl" {
    type        = string
    default     = "private"
}
