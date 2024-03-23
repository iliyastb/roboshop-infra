parameters = [
  { name = "dev.frontend.catalogue_url", value = "http://dev-catalogue.devtb.online:8080/", type = "String" },
  { name = "dev.frontend.user_url", value = "http://dev-user.devtb.online:8080/", type = "String" },
  { name = "dev.frontend.cart_url", value = "http://dev-cart.devtb.online:8080/", type = "String" },
  { name = "dev.frontend.shipping_url", value = "http://dev-shipping.devtb.online:8080/", type = "String" },
  { name = "dev.frontend.payment_url", value = "http://dev-payment.devtb.online:8080/", type = "String" },
  { name = "dev.cart.redis_host", value = "dev-redis.devtb.online", type = "String" },
  { name = "dev.cart.catalogue_host", value = "dev-catalogue.devtb.online", type = "String" },
  { name = "dev.cart.catalogue_port", value = "8080", type = "String" },
  { name = "dev.catalogue.mongo", value = "true", type = "String" },
  { name = "dev.catalogue.mongo_url", value = "mongodb://dev-mongodb.devtb.online:27017/catalogue", type = "String" },
  { name = "dev.dispatch.amqp_host", value = "dev-rabbitmq.devtb.online", type = "String" },
  { name = "dev.payment.cart_host", value = "dev-cart.devtb.online", type = "String" },
  { name = "dev.payment.cart_port", value = "8080", type = "String" },
  { name = "dev.payment.user_host", value = "dev-user.devtb.online", type = "String" },
  { name = "dev.payment.user_port", value = "8080", type = "String" },
  { name = "dev.payment.amqp_host", value = "dev-rabbitmq.devtb.online", type = "String" },
  { name = "dev.shipping.cart_endpoint", value = "dev-cart.devtb.online:8080", type = "String" },
  { name = "dev.shipping.db_host", value = "dev-mysql.devtb.online", type = "String" },
  { name = "dev.user.mongo", value = "true", type = "String" },
  { name = "dev.user.redis_host", value = "dev-redis.devtb.online", type = "String" },
  { name = "dev.user.mongo_url", value = "mongodb://dev-mongodb.devtb.online:27017/users", type = "String" }
]

secrets = [
  { name = "dev.dispatch.amqp_user", value = "roboshop", type = "SecureString" },
  { name = "dev.dispatch.amqp_pass", value = "roboshop123", type = "SecureString" },
  { name = "dev.payment.amqp_user", value = "roboshop", type = "SecureString" },
  { name = "dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
  { name = "dev.rabbitmq.user", value = "roboshop", type = "SecureString" },
  { name = "dev.rabbitmq.pass", value = "roboshop123", type = "SecureString" },
  { name = "dev.mysql.pass", value = "RoboShop@1", type = "SecureString" },
  { name = "dev.docdb.user", value = "admin1", type = "SecureString" },
  { name = "dev.docdb.pass", value = "RoboShop1", type = "SecureString" }
]