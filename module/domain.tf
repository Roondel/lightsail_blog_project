resource "aws_lightsail_domain" "lightsail_domain" {
  domain_name = var.domain_name
}
resource "aws_lightsail_domain_entry" "lightsail_domain_entry" {
  domain_name = aws_lightsail_domain.lightsail_domain.domain_name
  name        = var.subdomain
  type        = var.record_type
  target      = local.local_host
}
resource "aws_lightsail_certificate" "lightsail_cert" {
  name        = var.cert_name
  domain_name = var.domain_name

}