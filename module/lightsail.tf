resource "aws_lightsail_instance" "lightsail_instance" {
  blueprint_id      = var.app_blueprint
  bundle_id         = var.bundle
  name              = var.instance_name
  availability_zone = var.az

}
resource "aws_lightsail_static_ip" "lightsail_sip" {
  name = var.static_ip_name

}
resource "aws_lightsail_static_ip_attachment" "lightsail_static_ip_attachment" {
  static_ip_name = aws_lightsail_static_ip.lightsail_sip.id
  instance_name  = aws_lightsail_instance.lightsail_instance.id
}

resource "aws_lightsail_instance_public_ports" "lightsail_ports" {
  instance_name = aws_lightsail_instance.lightsail_instance.id

  port_info {
    protocol  = "tcp"
    from_port = var.http_from_port
    to_port   = var.http_to_port
  }
  port_info {
    protocol  = "tcp"
    from_port = var.https_from_port
    to_port   = var.https_to_port
  }
}
resource "aws_lightsail_distribution" "wordpress_distro" {
  name             = var.distro_name
  depends_on       = [aws_lightsail_static_ip_attachment.lightsail_static_ip_attachment]
  bundle_id        = var.distro_bundle
  certificate_name = aws_lightsail_certificate.lightsail_cert.id
  origin {
    name        = aws_lightsail_instance.lightsail_instance.name
    region_name = var.region
  }
  default_cache_behavior {
    behavior = var.cache_behavior
  }

}
