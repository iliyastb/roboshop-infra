env = "dev"

instances = {
  frontend = {
    name = "frontend"
    type = "t3.micro"
    monitor = true
  }
  catalogue = {
    name = "catalogue"
    type = "t3.micro"
    monitor = true
  }
  user = {
    name = "user"
    type = "t3.micro"
    monitor = true
  }
  cart = {
    name = "cart"
    type = "t3.micro"
    monitor = true
  }
  mongodb = {
    name = "mongodb"
    type = "t3.micro"
  }
  redis = {
    name = "redis"
    type = "t3.micro"
  }
  shipping = {
    name = "shipping"
    type = "t3.micro"
    monitor = true
  }
  payment = {
    name = "payment"
    type = "t3.micro"
    monitor = true
  }
  mysql = {
    name = "mysql"
    type = "t3.micro"
  }
  rabbitmq = {
    name = "rabbitmq"
    type = "t3.micro"
  }
  dispatch = {
    name = "dispatch"
    type = "t3.micro"
    monitor = true
  }
}