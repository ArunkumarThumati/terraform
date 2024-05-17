resource "aws_route53_record" "expense" {
  count = length(var.instance_name)
  zone_id = var.zone_id

  #name = local.records_name
  # count and count.index will not work in locals

  name    = var.instance_name[count.index] == "frontend" ? var.domain_name : "${var.instance_name[count.index]}.${var.domain_name}"
  
  type    = "A"
  ttl     = 1

  #records = local.records_value
  # count and count.index will not work in locals

  records = var.instance_name[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
 #if records already exits
  allow_overwrite = true
}
