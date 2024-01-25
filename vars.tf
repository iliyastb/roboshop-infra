variable "instances" {
  default = {
    catalogue = {
      name = "catalogue"
      type = "t2.micro"
    }
    frontend = {
      name = "frontend"
      type = "t2.micro"
    }
  }
}