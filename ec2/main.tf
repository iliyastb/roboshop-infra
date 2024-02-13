data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "centos8-ansible"
  owners      = ["860050401100"]
}

resource "aws_instance" "instances" {
  ami                    = data.aws_ami.ami.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = var.component
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "TLS from VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_route53_record" "r53" {
  name    = "${var.component}.devtb.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instances.private_ip]
  zone_id = "Z0519871SX8ZUH6ORUV5"
}

resource "aws_route53_record" "pr53" {
  name    = "devtb.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instances["frontend"].public_ip]
  zone_id = "Z0519871SX8ZUH6ORUV5"
}

resource "null_resource" "provisioner" {
  depends_on = [aws_route53_record.r53]

  provisioner "remote-exec" {

    connection {
      host = aws_instance.instances.public_ip
      user = "root"
      password = "DevOps321"
    }

    inline = [
      "ansible-pull -i localhost, -U https://github.com/iliyastb/roboshop-ansible.git roboshop.yml -e role_name=${var.component}"
    ]
  }
}

variable "instance_type" {}
variable "component" {}