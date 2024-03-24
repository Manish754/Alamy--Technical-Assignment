# privider AWS
provider "aws" {
  region = "us-east-1"
}

# VPC and Subnets
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block         = var.public_subnet_cidr
  availability_zone = var.availability_zone

  tags = {
    Name = "Public Subnet"
  }
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.main.id
  cidr_block         = var.private_subnet_cidr
  availability_zone = var.availability_zone

  tags = {
    Name = "Private Subnet"
  }
}

# IAM Users and Roles (modularize for complex setups)
resource "aws_iam_user" "app_user" {
  name = "app-user"
}



# Define the aws_instance resource
resource "aws_instance" "web_server" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
  security_groups = [aws_security_group.web_server.id]

  tags = {
    Name = "Web Server Instance"
  }
}


# Outputs
output "public_ip" {
  value = aws_instance.web_server.public_ip
}

