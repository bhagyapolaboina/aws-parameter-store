resource "aws_ssm_parameter" "params" {
  count = length(var.params)
  name  = var.params[count.index].name
  type = var.params[count.index].type
  value = var.params[count.index].value
}
variable "params" {
  default = [
    { name = "roboshop.dev.fronted.catalogue_url", value = "http://172.31.93.98:8080", type = "String" },
    { name = "roboshop.dev.fronted.user_url", value = "http://172.31.95.5:8080", type = "String" },
    { name = "roboshop.dev.fronted.cart_url", value = "http://172.31.93.136:8080", type = "String" },
    { name = "roboshop.dev.fronted.payment_url", value = "http://172.31.85.181:8080", type = "String" },
    { name = "roboshop.dev.fronted.shipping_url", value = "http://172.31.92.27:8080", type = "String" },

  ]
}

