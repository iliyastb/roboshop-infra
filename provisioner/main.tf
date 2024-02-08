data "aws_instances" "ip" {
  filter {
    name   = "tag:Name"
    values = ["test"]
  }
}
output "ip" {
  value = data.aws_instances.ip.public_ips
}

resource "null_resource" "provisioner" {
  provisioner "remote-exec" {

    connection {
      host = var.public
      user = "root"
      password = "DevOps321"
    }

    inline = [
      "ansible-pull -i localhost, -U https://github.com/iliyastb/roboshop-ansible.git roboshop.yml -e role_name=${var.component}"
    ]
  }
}

variable "component" {}
variable "public_ip" {}