# get hosted zone details
data "aws_route53_zone" "hosted_zone" {
  name = var.domain_name
}

# create a record set in route 53
resource "aws_route53_record" "site_domain" {
  zone_id = data.aws_route53_zone.hosted_zone.zone_id
  name    = var.record_name
  type    = "A"

# this how to connect the record set with the application LB, And this argument will be the dns name of the ALB
  alias {
    name                   = aws_lb.application_load_balancer.dns_name
    zone_id                = aws_lb.application_load_balancer.zone_id
    evaluate_target_health = true
  }
  
}