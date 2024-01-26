resource "aws_route53_record" "r53" {
  name    = "${var.component}.devtb.online"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
  zone_id = "Z0519871SX8ZUH6ORUV5"
}

resource "aws_route53_record" "pr53" {
  name    = "devtb.online"
  type    = "A"
  ttl     = 30
  records = [var.public_ip]
  zone_id = "Z0519871SX8ZUH6ORUV5"
}

variable "component" {}
variable "private_ip" {}
variable "public_ip" {}