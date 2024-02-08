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
#  wait_for_fulfillment = true

  tags = {
    Name = var.component
  }
}

#resource "aws_ec2_tag" "tags" {
#  key         = "Name"
#  resource_id = aws_instance.instances.id
#  value       = var.component
#}

variable "instance_type" {}
variable "component" {}
variable "sg_id" {}

output "private_ip" {
  value = aws_instance.instances.private_ip
}

output "public_ip" {
  value = aws_instance.instances.public_ip
}