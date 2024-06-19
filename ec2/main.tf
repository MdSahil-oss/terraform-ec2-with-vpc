terraform {
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = "~> 5.54.1"
      configuration_aliases = [aws.region1, aws.region2]
    }
  }

  required_version = ">= 1.2.0"
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  alias  = "region1"
}

provider "aws" {
  region = "us-east-2"
  alias  = "region2"
}
