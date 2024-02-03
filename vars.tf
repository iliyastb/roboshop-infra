variable "instances" {
  default = {
    frontend = {
      name = "frontend"
      type = "t3.micro"
    }
    catalogue = {
      name = "catalogue"
      type = "t3.micro"
    }
  }
}