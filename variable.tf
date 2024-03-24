variable "aws_region" {
  description = "AWS region where resources will be deployed"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
}

variable "availability_zone" {
  description = "Availability zone for deploying resources"
}

variable "ssh_cidr_block" {
  description = "Allowed SSH access IP range"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  description = "EC2 instance type"
}


