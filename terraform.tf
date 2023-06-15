terraform {

  backend "s3" {
    bucket = "terrformbackend1234test"
    key    = "test/vpc.tfstate"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.46.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.4.3"
    }

  }

  required_version = "~> 1.3"
}
