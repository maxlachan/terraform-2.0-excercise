terraform {
  backend "s3" {
    bucket = "terraform-s3-bucket-nicky"
    key = "finance/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
    
  }
}