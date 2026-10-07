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