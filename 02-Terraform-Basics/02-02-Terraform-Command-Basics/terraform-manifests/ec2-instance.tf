# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "Terraform2025Learning-WorkPC" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "ap-southeast-2"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0be2609ba883822ec" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
}


