terraform {
  backend "s3" {
    bucket = "sctp-ce7-tfstate"        # Terraform State bucket name
    key    = "alanp-bluegreen-tfstate" # Name of your tfstate file
    region = "us-east-1"               # Terraform State bucket region
  }
}
