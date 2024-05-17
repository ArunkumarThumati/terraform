#locals {

#records_name    = var.instance_name[count.index] == "frontend" ? var.domain_name : "${var.instance_name[count.index]}.${var.domain_name}"

#records_value = var.instance_name[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]

#} 

