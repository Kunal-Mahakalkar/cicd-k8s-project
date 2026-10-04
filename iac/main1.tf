terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.67.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}
variable "instance_type" {
  type        = string
  description = "instancetype"
  default     = "t3.micro"

}
variable "instance_name" {
  type        = string
  description = "EC2 instance name"
  default     = "terraform-demo"

}
variable "enable_monitoring" {
  type        = bool
  description = "EC2 instance monitoring"
  default     = false

}

resource "aws_instance" "ec2-demo_ec2" {
  ami = "ami-01a00762f46d584a1"
  # instance_type = "t3.micro"
  instance_type = var.instance_type
  
  monitoring = var.enable_monitoring

  tags = {
    name = var.instance_name
  }
}

# resource "aws_iam_user" "demo_user" {
#   name = "terraform-demo-user"


#   tags = {
#     purpose = "terraform-demo"
#   }
# }

# resource "aws_s3_bucket" "demo-bucket" {
#   bucket = "terraform-demo-bucket2233445566656567556"

#   tags = {
#     purpose     = "terraform-demo"
#     Environment = "Demo"
#   }
# }

# resource "aws_s3_bucket_versioning" "demo_bucket_versioning" {
#   bucket = aws_s3_bucket.demo-bucket.id
#   versioning_configuration {
#     status = "Enabled"
#   }
# }
