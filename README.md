
<Picture>
<img width=”800" height=”200" src=”https://github.com/Roondel/lightsail_blog_project/assets/115371614/b8d9b4dd-a9ad-48bc-9d46-49d62dadb2bc" alt=”RooneyCloudTech”>

 This Module will create a lightsail EC2 instance. Please fork Repo to make your own changes. This is not an all in one module. Resources created in Lightsail do not show in your AWS console.

## Pre-Requisites
Domain Name:
If intending to use Route53. a hosted zone will need to be purchased from the amazon directory or other third party domain provider.

SSL/TLS Certificate:
This module will create a certificate within lightsail which will allow traffic to be secured. 
However, you can also create your own certifcate in ACM and use a data block to import this into your resource blocks. Certificates can be created through other third parties and deployed manually onto your EC2 instance.
Bitnami certificate guide: https://www.youtube.com/watch?v=LDVQhN7zJvQ

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_lightsail"></a> [lightsail](#module\_lightsail) | ./module | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_region"></a> [region](#input\_region) | Region | `string` | `"us-east-1"` | no |

## Outputs

No outputs.
