terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.5.0"
    }
  }
}
provider "aws"{
       region = var.Region
       access_key = var.access_key
}