# variables.tf
variable "region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {
  default = "10.1.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.1.1.0/24"
}

variable "private_subnet_cidr" {
  default = "10.1.2.0/24"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  default = "terraform123"
  sensitive = true
}

variable "key_name" {
  description = "EC2 Key Pair Name"
  type        = string
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key file"
  type        = string
}