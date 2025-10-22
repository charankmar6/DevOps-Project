terraform {
  backend "s3" {
    bucket = "charan-terraform-statefile"
    key = "server_name/statefile"
    region = "ap-south-1"
  }
}  
