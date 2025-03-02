variable "access_key"{
    description = "Access key of AWS account"
}
variable "secret_key"{}
variable "AMI_Value"{
    description = "AMI Value of the Instance"
}
variable "Region"{
    description = "This instance belongs to US region"
}
variable "type"{
    description = "Instance belongs to micro"
}
variable "private_key_file"{
    default = "mykeypair"
}
variable "public_key_file"{
    default = "C:/Users/Don't Know/.ssh/mykeypair.pub"
}
variable "instance_username"{
    default ="ubuntu"
}
