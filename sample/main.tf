data "aws_instances" "ip" {
  instance_tags = {
    Key = "Name"
  }
}

#resource "aws_spot_instance_request" "instances" {
#  ami                    = "ami-001be52dbdb73d993"
#  instance_type          = "t3.micro"
#  vpc_security_group_ids = ["sg-0f1959ab92bc12167"]
#  wait_for_fulfillment = true
#
#  tags = {
#    Name = "iliyas"
#  }
#
#  provisioner "remote-exec" {
#
#    connection {
#      host = self.public_ip
#      user = "root"
#      password = "DevOps321"
#    }
#
#    inline = [
#      "ansible-pull -i localhost, -U https://github.com/iliyastb/roboshop-ansible.git roboshop.yml -e role_name=frontend"
#    ]
#  }
#}
#
#ami-072aa986009d7d8af