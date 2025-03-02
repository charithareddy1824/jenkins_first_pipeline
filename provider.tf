terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.5.0"
      access_key = var.access_key }
  }
}
provider "aws"{
       region = var.Region
}