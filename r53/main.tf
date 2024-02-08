resource "aws_route53_record" "r53" {
  name    = "${var.component}.devtb.online"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
  zone_id = "Z0519871SX8ZUH6ORUV5"
}

variable "component" {}
variable "private_ip" {}

resource "null_resource" "provisioner" {
  depends_on = [aws_route53_record.r53]

  provisioner "remote-exec" {

    connection {
      host = var.host
      user = "root"
      password = "DevOps321"
    }

    inline = [
      "ansible-pull -i localhost, -U https://github.com/iliyastb/roboshop-ansible.git roboshop.yml -e role_name=frontend"
    ]
  }
}

variable "host" {}