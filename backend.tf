terraform {
  backend "s3" {
    bucket = "terraform-s3-bucket-steve"
    key = "finance/terraform-s3-bucket-steve"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
    
  }
}