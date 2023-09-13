variable "aws_region" {
  description = "AWS region where the EC2 instance will be launched."
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type (e.g., t2.micro)."
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the SSH key pair to associate with the EC2 instance."
  type        = string
  default     = "dev" # Set the default value to "dev"
  #default     = "prod" # Set the default value to "prod"
  #default     = "qa" # Set the default value to "qa"
}

