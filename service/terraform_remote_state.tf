data "terraform_remote_state" "aws_iam" {
  backend = "s3"

  config {
    bucket = "my-sample-terraform"
    key    = "sample/iam/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config {
    bucket = "my-sample-terraform"
    key    = "sample/vpc/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
