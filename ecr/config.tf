terraform {
  backend "s3" {
    bucket = "my-sample-terraform"
    key    = "ecr/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}
