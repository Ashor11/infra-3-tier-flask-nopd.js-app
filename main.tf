terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 5.40.0"
    }
  }
}
terraform {
  backend "s3" {
    bucket = "terraform-state-terraform-aws"
    key    = "terraform-aws-ec2-state"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "terraform-locks"
  } 
}
