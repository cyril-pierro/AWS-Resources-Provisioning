# Aws route53 name server
# Aws provides a default name server with the name of the zone you created.
# You can overwrite it to give it your own nameserver in the variable.tf

# General Configuration
resource "aws_route53_zone" "zone" {
  name = var.zone_name


  vpc {
    vpc_id = var.vpc_id
  }
}


resource "aws_route53_vpc_association_authorization" "authorization_vpc" {
  vpc_id  = var.vpc_id
  zone_id = aws_route53_zone.zone.id
}


# Create records
resource "aws_route53_record" "nameservers" {
  allow_overwrite = true
  for_each        = var.name_servers_records
  name            = each.value.name
  ttl             = each.value.ttl
  type            = each.value.type
  zone_id         = aws_route53_zone.zone.zone_id

  records = aws_route53_zone.zone.name_servers
}

# resource "aws_route53_record" "mail_txt" {
#   zone_id  = aws_route53_zone.zone.zone_id
#   for_each = var.txt_records
#   name     = each.value.name
#   ttl      = each.value.ttl
#   type     = each.value.type

#   records = var.records_txt
# }

# resource "aws_route53_record" "mail_mx" {
#   zone_id  = aws_route53_zone.zone.zone_id
#   for_each = var.mx_records
#   name     = each.value.name
#   ttl      = each.value.ttl
#   type     = each.value.type

#   records = var.records_mx
# }



# Health check or Availability monitoring
resource "aws_route53_health_check" "health_check" {
  fqdn              = var.zone_name
  port              = var.port
  type              = var.protocol_type
  resource_path     = var.resource_path
  failure_threshold = var.failure_threshold
  request_interval  = var.request_interval

  tags = {
    Name = var.health_check_name
  }
}
