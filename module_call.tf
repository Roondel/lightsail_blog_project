module "lightsail" {
  source = "./module"

  domain_name    = "<insert hosted zone name here>"
  record_type    = "<insert record type here>" # A if associated with an AWS resource or CNAME if your domain provider is third party. i.e. GoDaddy.
  subdomain      = "<insert subdomain here>"   # i.e. www if you want to create a www.example.com record.
  static_ip_name = "<insert static ip name here>"
  cert_name      = "<insert certificate name here>"
  instance_name  = "<insert instance name here>"
  domain_host    = module.lightsail.eip_address
  cache_behavior = "dont-cache"
}
 