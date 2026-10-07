output "ec2_public_ip" {
  description = "Public Ip of the ec2 instance"
  value = aws_instance.demo_ec2.public_ip
#   sensitive = true
}

output "ec2_instance_id" {
    description = "Instance id for ec2"
    value = aws_instance.demo_ec2.id
  
}
output "s3_bucket_name" {
  description = "Name of the bucket"
  value = aws_s3_bucket.demo-bucket.bucket
}
output "Iam_user" {
  description = "Iam user created using terraform"
  value = aws_iam_user.demo_user.name
}