


resource "aws_instance" "demo_ec2" {
  ami = var.ami_id
  instance_type = var.instance_type
  
  monitoring = var.enable_monitoring

  tags = {
    Name = var.instance_name
    Environment = var.environment
    owner = "terraform"

  }
}



resource "aws_iam_user" "demo_user" {
  name = var.iam_user_name


  tags = {
    purpose = var.iam_purpose
  }
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = var.bucket_name

  tags = {
    purpose     = var.bucket_purpose
    Environment = var.environment
  }
}

resource "aws_s3_bucket_versioning" "demo_bucket_versioning" {
  count = var.enable_versioning ? 1 : 0
  bucket = aws_s3_bucket.demo_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
