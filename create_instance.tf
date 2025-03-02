resource "aws_key_pair" "mykeypair" {
  key_name = "mykeypair"
  public_key = file(var.public_key_file)
}

resource "aws_instance" "myfirstinstance"{
    ami = var.AMI_Value
    instance_type = var.type 
    key_name = aws_key_pair.mykeypair.key_name
    tags = {
        Name ="MyFirstTerraformInstance"
    }

    provisioner "file"{
        source = "installation_steps.sh"
        destination = "/tmp/installation_steps.sh"
}

    provisioner "remote-exec"{
        inline = [
            "chmod +x /tmp/installation_steps.sh",
            "sudo /tmp/installation_steps.sh"
        ]
    }
    connection {
      host =coalesce(self.public_ip,self.public_ip)
      type = "ssh"
      user = var.instance_username    
      private_key = file(var.private_key_file)
    }
}