<img src="https://github.com/Roondel/lightsail_blog_project/assets/115371614/c9dcb3ce-8068-4a0e-9f55-765d8ae9369d" alt="RooneyCloudTech" width="1024" height="500" /> 

This Module will create a lightsail EC2 instance. Please fork Repo to make your own changes. This is not an all in one module. Resources created in Lightsail do not show in your AWS console.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.37.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lightsail_certificate.lightsail_cert](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_certificate) | resource |
| [aws_lightsail_distribution.wordpress_distro](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_distribution) | resource |
| [aws_lightsail_domain.lightsail_domain](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_domain) | resource |
| [aws_lightsail_domain_entry.lightsail_domain_entry](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_domain_entry) | resource |
| [aws_lightsail_instance.lightsail_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_instance) | resource |
| [aws_lightsail_instance_public_ports.lightsail_ports](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_instance_public_ports) | resource |
| [aws_lightsail_static_ip.lightsail_sip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_static_ip) | resource |
| [aws_lightsail_static_ip_attachment.lightsail_static_ip_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_static_ip_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_blueprint"></a> [app\_blueprint](#input\_app\_blueprint) | n/a | `string` | `"wordpress"` | no |
| <a name="input_az"></a> [az](#input\_az) | Availability Zone | `string` | `"us-east-1a"` | no |
| <a name="input_bundle"></a> [bundle](#input\_bundle) | the compute size for the underlying EC2 instance. Options include nano\_2\_0, micro\_2\_0, small\_2\_0, medium\_2\_0, large\_2\_0, xlarge\_2\_0. | `string` | `"nano_2_0"` | no |
| <a name="input_cache_behavior"></a> [cache\_behavior](#input\_cache\_behavior) | The cache behavior for this distribution. You must specify exactly one default cache behavior. You must specify exactly one default cache behavior. cache or dont-cache | `any` | n/a | yes |
| <a name="input_cert_name"></a> [cert\_name](#input\_cert\_name) | Certificate name | `string` | `"test-cert"` | no |
| <a name="input_distro_bundle"></a> [distro\_bundle](#input\_distro\_bundle) | the compute size for the underlying EC2 instance for the distribution. Options include small\_1\_0, medium\_1\_0, large\_1\_0. | `string` | `"small_1_0"` | no |
| <a name="input_distro_name"></a> [distro\_name](#input\_distro\_name) | Name of the distribution | `string` | `"test-distro"` | no |
| <a name="input_domain_host"></a> [domain\_host](#input\_domain\_host) | domain access IP | `string` | `"127.0.0.1"` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Domain name for the website | `any` | n/a | yes |
| <a name="input_http_from_port"></a> [http\_from\_port](#input\_http\_from\_port) | port info block. First port in a range of open ports on an instance. | `number` | `80` | no |
| <a name="input_http_to_port"></a> [http\_to\_port](#input\_http\_to\_port) | port info block. Last port in a range of open ports on an instance. | `number` | `80` | no |
| <a name="input_https_from_port"></a> [https\_from\_port](#input\_https\_from\_port) | port info block. First port in a range of open ports on an instance. | `number` | `443` | no |
| <a name="input_https_to_port"></a> [https\_to\_port](#input\_https\_to\_port) | port info block. Last port in a range of open ports on an instance. | `number` | `443` | no |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | Name of the instance | `string` | `"test-instance"` | no |
| <a name="input_record_type"></a> [record\_type](#input\_record\_type) | Record type | `string` | `"A"` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"us-east-1"` | no |
| <a name="input_static_ip_name"></a> [static\_ip\_name](#input\_static\_ip\_name) | Name of static IP | `any` | n/a | yes |
| <a name="input_subdomain"></a> [subdomain](#input\_subdomain) | subdomain for record | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eip_address"></a> [eip\_address](#output\_eip\_address) | n/a |
