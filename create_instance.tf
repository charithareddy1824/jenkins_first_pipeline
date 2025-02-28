resource "aws_instance" "myfirstinstance"{
    ami = var.AMI_Value
    instance_type = var.type 
    tags = {
        Name ="MyFirstTerraformInstance"
    }
    }