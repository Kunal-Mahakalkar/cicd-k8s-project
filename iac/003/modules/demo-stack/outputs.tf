output "ec2_public_ip" {
  description = "Public Ip of the ec2 instance"
  value = aws_instance.demo_ec2.public_ip
#   sensitive = true
}

output "ec2_instance_id" {
    description = "Instance id for ec2"
    value = aws_instance.demo_ec2.id
  
}

output "ec2_private_ip" {
    description = "private ip  for ec2"
    value = aws_instance.demo_ec2.private_ip
  
}

output "ec2_instance_arn" {
    description = "arn for ec2 instance"
    value = aws_instance.demo_ec2.arn
  
}
output "s3_bucket_name" {
  description = "Name of the bucket"
  value = aws_s3_bucket.demo_bucket.bucket
}

output "s3_bucket_arn" {
  description = "Name of the bucket s3 arn"
  value = aws_s3_bucket.demo_bucket.arn
}
output "iam_user_name" {
  description = "Iam user created using terraform"
  value = aws_iam_user.demo_user.name
}

output "Iam_user_arn" {
  description = "Iam user Arn"
  value = aws_iam_user.demo_user.arn
}