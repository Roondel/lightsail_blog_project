variable "domain_name" {
  description = "Domain name for the website"

}
variable "cert_name" {
  description = "Certificate name"
  default = "test-cert"

}
variable "record_type" {
  description = "Record type"
  default = "A"

}
variable "local_port" {
  description = "port that application runs on"
  default     = 80
}
variable "subdomain" {
  description = "subdomain for record"
}
variable "http_from_port" {
  description = "port info block. First port in a range of open ports on an instance."
  default     = 80

}
variable "http_to_port" {
  description = "port info block. Last port in a range of open ports on an instance."
  default     = 80
}
variable "az" {
  description = "Availability Zone"
  default     = "us-east-1a"
}
variable "instance_name" {
  description = "Name of the instance"
  default = "test-instance"
}
variable "bundle" {
  description = "the compute size for the underlying EC2 instance. Options include nano_2_0, micro_2_0, small_2_0, medium_2_0, large_2_0, xlarge_2_0."
  default     = "nano_2_0"
}
variable "blueprint" {
  description = "The blueprint ID for the instance. Blueprints define the operating system, software, and virtualization settings for an instance."
  default     = "amazon_linux"
}
variable "https_from_port" {
  description = "port info block. First port in a range of open ports on an instance."
  default     = 443

}
variable "https_to_port" {
  description = "port info block. Last port in a range of open ports on an instance."
  default     = 443
}
variable "static_ip_name" {
  description = "Name of static IP"
}

