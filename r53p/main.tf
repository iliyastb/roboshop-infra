resource "aws_route53_record" "pr53" {
  name    = "devtb.online"
  type    = "A"
  ttl     = 30
  records = [var.public_ip]
  zone_id = "Z0519871SX8ZUH6ORUV5"
}

variable "public_ip" {}