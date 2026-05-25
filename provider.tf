terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.37.0"
    }
  }


  backend "s3" {
    bucket         = "daws78s-remote-state-123456789012"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    #dynamodb_table = "terraform-locks"
    use_lockfile = true
  }
}

#   backend "s3" {
#     bucket         = "daws78s-remote-state-123456789012"
#     key    = "expense-dev-k8-ws"
#     region = "us-east-1"
#     #dynamodb_table = "daws78s-locking"
#     use_lockfile = true
#   }
# }

#provide authentication here
provider "aws" {
  region = "us-east-1"
}