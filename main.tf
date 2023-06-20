resource "aws_ssm_parameter" "params" {
  count = length(var.params)
  name  = var.params[count.index].name
  type = var.params[count.index].type
  value = var.params[count.index].value
}
variable "params" {
  default = [
    { name = "roboshop.dev.fronted.catalogue_url", value = "http://172.31.20.57:8080/", type = "String" },
    { name = "roboshop.dev.fronted.user_url", value = "http://172.31.17.13:8080/", type = "String" },
    { name = "roboshop.dev.fronted.cart_url", value = "http://172.31.18.122:8080/", type = "String" },
    { name = "roboshop.dev.fronted.payment_url", value = "http://172.31.28.195:8080/", type = "String" },
    { name = "roboshop.dev.fronted.shipping_url", value = "http://172.31.27.114:8080/", type = "String" },
    { name = "roboshop.dev.cart.redis_host", value = "172.31.16.173", type = "String" },
    { name = "roboshop.dev.cart.catalogue_host", value = "172.31.20.57", type = "String" },
    { name = "roboshop.dev.cart.catalogue_port", value = "8080", type = "String" },
    { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.catalogue.monog_url", value = "mongodb://172.31.29.231:27017/catalogue", type = "String" },
    { name = "roboshop.dev.payment.cart_host", value = "172.31.18.122", type = "String" },
    { name = "roboshop.dev.payment.cart_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.user_host", value = "172.31.17.13", type = "String" },
    { name = "roboshop.dev.payment.user_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.amqp_host", value = "172.31.25.49", type = "String" },
    { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.shipping.cart_endpoint", value = "172.31.18.122:8080", type = "String" },

    { name = "roboshop.dev.shipping.db_host", value = "172.31.17.134", type = "String" },
    { name = "roboshop.dev.user.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.user.redis_host", value = "172.31.16.173", type = "String" },
    { name = "roboshop.dev.user.mongo_url", value = "mongodb://172.31.29.231:27017/users", type = "String" },

    ##passwords will be never be part of git repos,usually in orgnstn we create them manually.means whom
    ##ever have access will provision these secrets in parameter store
    { name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },


  ]
}

