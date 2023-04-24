 get hosted zone details
# terraform aws data hosted zone
data "aws_route53_zone" "hosted_zone" {
  name = 
}

# create a record set in route 53
# terraform aws route 53 record
resource "aws_route53_record" "site_domain" {
  zone_id = data.aws_route53_zone.hosted_zone.zone_id
  name    = 
  type    = 

  alias {
    name                   = aws_lb_application_load_balancer.dns_name
    zone_id                = aws_lb_application_load_balancer.zone.id
    evaluate_target_health = true
  }
}