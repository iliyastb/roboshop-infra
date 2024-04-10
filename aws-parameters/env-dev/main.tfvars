parameters = [
  { name = "dev.frontend.catalogue_url", value = "http://catalogue-dev.devtb.online:80/", type = "String" },
  { name = "dev.frontend.user_url", value = "http://user-dev.devtb.online:80/", type = "String" },
  { name = "dev.frontend.cart_url", value = "http://cart-dev.devtb.online:80/", type = "String" },
  { name = "dev.frontend.shipping_url", value = "http://shipping-dev.devtb.online:80/", type = "String" },
  { name = "dev.frontend.payment_url", value = "http://payment-dev.devtb.online:80/", type = "String" },
  { name = "dev.cart.redis_host", value = "redis-dev.devtb.online", type = "String" },
  { name = "dev.cart.catalogue_host", value = "catalogue-dev.devtb.online", type = "String" },
  { name = "dev.cart.catalogue_port", value = "80", type = "String" },
  { name = "dev.catalogue.mongo", value = "true", type = "String" },
  { name = "dev.catalogue.mongo_url", value = "mongodb://mongodb-dev.devtb.online:27017/catalogue", type = "String" },
  { name = "dev.dispatch.amqp_host", value = "rabbitmq-dev.devtb.online", type = "String" },
  { name = "dev.payment.cart_host", value = "cart-dev.devtb.online", type = "String" },
  { name = "dev.payment.cart_port", value = "80", type = "String" },
  { name = "dev.payment.user_host", value = "user-dev.devtb.online", type = "String" },
  { name = "dev.payment.user_port", value = "80", type = "String" },
  { name = "dev.payment.amqp_host", value = "rabbitmq-dev.devtb.online", type = "String" },
  { name = "dev.shipping.cart_endpoint", value = "cart-dev.devtb.online:80", type = "String" },
  { name = "dev.shipping.db_host", value = "mysql-dev.devtb.online", type = "String" },
  { name = "dev.user.mongo", value = "true", type = "String" },
  { name = "dev.user.redis_host", value = "redis-dev.devtb.online", type = "String" },
  { name = "dev.user.mongo_url", value = "mongodb://mongodb-dev.devtb.online:27017/users", type = "String" }
]

secrets = [
  { name = "dev.dispatch.amqp_user", value = "roboshop", type = "SecureString" },
  { name = "dev.dispatch.amqp_pass", value = "roboshop123", type = "SecureString" },
  { name = "dev.rabbitmq.amqp.user", value = "roboshop", type = "SecureString" },
  { name = "dev.rabbitmq.amqp.pass", value = "roboshop123", type = "SecureString" },
  { name = "dev.mysql.pass", value = "RoboShop@1", type = "SecureString" },
  { name = "dev.docdb.user", value = "admin1", type = "SecureString" },
  { name = "dev.docdb.pass", value = "RoboShop1", type = "SecureString" },
  { name = "dev.rds.user", value = "admin1", type = "SecureString" },
  { name = "dev.rds.pass", value = "RoboShop1", type = "SecureString" }
]