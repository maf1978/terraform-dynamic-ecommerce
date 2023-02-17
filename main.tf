terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.55.0"
    }
  }
}


#configure aws provider
provider "aws" {
  region  = "us-east-1"
  profile = "aimadmin"
}
# Store terraform state file in S3
terraform {
  backend "s3" {
    bucket       = "maf1978-terraform-dynamic-ecommerce-remote-state"
    key          = "terraform.tfstate.dev"
    region       = "us-east-1"
    endpoint     = "s3.us-east-1.amazonaws.com"
    sts_endpoint = "https://sts.us-east-1.amazonaws.com"
    profile      = "aimadmin"
  }

}


