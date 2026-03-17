provider "aws" {
  
  
}

terraform {
  backend s3 {
    bucket = "terraform-backend-bucket-personal-website"
    region = "eu-north-1"
    key = "github-actions/terraform.tfstate"
    encrypt = true
    dynamodb_table = "dynamodb-terraform-pw"
    }
}