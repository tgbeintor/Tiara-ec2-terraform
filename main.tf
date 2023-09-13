resource "aws_instance" "aws-demo" {
  ami           = "ami-053b0d53c279acc90" # Ubuntu 22.04 LTS AMI ID in us-east-1 for Dev
  #ami           = "ami-024e6efaf93d85776" # Ubuntu 22.04 LTS AMI ID in us-east-2 for Prod
  #ami           = "ami-0f8e81a3da6e2510a" # Ubuntu 22.04 LTS AMI ID in us-west-1 for QA
  instance_type = var.instance_type
  key_name      = var.key_name
}

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "FranckKengne"
    workspaces {
     name = "ubuntu"
    } 
  }
  
}