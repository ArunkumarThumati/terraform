resource "aws_route53_record" "expense" {
  for_each = aws_instance.expense
  zone_id = var.zone_id

  #name = local.records_name
  # count and count.index will not work in locals

  name    = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}"
  
  type    = "A"
  ttl     = 1

  #records = local.records_value
  # count and count.index will not work in locals

  records = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip]
 #if records already exits
  allow_overwrite = true
}
