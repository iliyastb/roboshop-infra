data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "centos8-ansible"
  owners      = ["860050401100"]
}

#data "aws_instance" "ip" {
#  filter {
#    name   = "tag:Name"
#    values = ["frontend"]
#  }
#}