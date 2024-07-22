
terraform {
  backend "s3" {
    bucket         = "hansraptor-poc-amplify-react-auth-state-bucket"
    key            = "main.tfstate"
    region         = "af-south-1"
    dynamodb_table = "hansraptor-poc-amplify-react-auth-lock-table"
  }
}

provider "aws" {
  alias  = "restricted"
  region = "us-east-1"
}

provider "aws" {
  alias  = "main"
  region = "af-south-1"
}
