terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.26.0"
    }
  }

  required_version = ">= 0.15"

  backend "remote" {
    organization = "Cloud"

    workspaces {
      name = "sentinel-example"
    }
  }
  
  backend "s3" {
    bucket = "tfcloudlogs"
    region = "us-east-1"
    key    = "terraform.tfstate"
#     access_key = "your-access-key"
#     secret_key = "your-secret-key"
  }

  log {
    type = "s3"
    config = {
      bucket = "tfcloudlogs"
      region = "us-east-1"
    }
  }

}
