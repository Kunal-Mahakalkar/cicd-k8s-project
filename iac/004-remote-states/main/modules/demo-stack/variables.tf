variable "ami_id" {
  type        = string
  description = "AMI id for ec2 instance"
}

variable "instance_type" {
  type        = string
  description = "Instance type"
}

variable "instance_name" {
  type        = string
  description = "EC2 instance name"
}

variable "enable_monitoring" {
  type        = bool
  description = "EC2 instance monitoring"
}

variable "environment" {
  type        = string
  description = "Name of the environment"
}

variable "iam_user_name" {
  type        = string
  description = "Name of the IAM user"
}

variable "iam_purpose" {
  type        = string
  description = "Purpose tag for IAM user"
}

variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "bucket_purpose" {
  type        = string
  description = "Purpose of the S3 bucket"
}

variable "enable_versioning" {
  type        = bool
  description = "Enable S3 bucket versioning"
}