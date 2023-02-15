#configure aws provider
provider "aws" {
  region  = "us-east-1"
  profile = "aimadmin"
}
# Store terraform state file in S3
terraform {
  backend "s3" {
    bucket  = "maf1978-terraform-dynamic-ecommerce-remote-state"
    key     = "terraform.tfstate.dev"
    region  = "us-east-1"
    profile = "aimadmin"
  }

}


