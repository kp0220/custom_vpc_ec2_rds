# main.tf
provider "aws" {
  region = var.region
}

resource "tls_private_key" "ec2_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}











