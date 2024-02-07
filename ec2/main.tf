data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "centos8-ansible"
  owners      = ["860050401100"]
}

#973714476881

resource "aws_instance" "instances" {
  ami                    = data.aws_ami.ami.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.sg_id]

  tags = {
    Name = var.component
  }

  provisioner "remote-exec" {

    connection {
      host = self.public_ip
      user = "centos"
      password = "DevOps321"
    }

    inline = [
      "ansible-pull -i localhost, -U https://github.com/iliyastb/roboshop-ansible.git roboshop.yml -e role_name=${var.component}"
    ]
  }
}

variable "instance_type" {}
variable "component" {}
variable "sg_id" {}

output "private_ip" {
  value = aws_instance.instances.private_ip
}

output "public_ip" {
  value = aws_instance.instances.public_ip
}