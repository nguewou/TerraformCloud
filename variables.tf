variable "aws_region" {
  description = "The AWS region to deploy resources in"
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "The name of the VPC"
  default     = "vpcmain"
}

variable "instance_type" {
  description = "The type of EC2 instance"
  default     = "t2.micro"
}

