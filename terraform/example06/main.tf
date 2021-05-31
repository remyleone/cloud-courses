terraform {
  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
      version = "2.1.0"
    }
  }
}

provider "scaleway" {
  region = "fr-par"
}

data "scaleway_marketplace_image" "example06" {
  instance_type = "DEV1-S"
  label         = "ubuntu_focal"
}

resource "scaleway_instance_server" "example06" {
  name              = "example06"
  image             = data.scaleway_marketplace_image.example06.id
  type              = "DEV1-S"
  enable_ipv6       = true
  enable_dynamic_ip = true

  cloud_init = data.template_file.cloud_init_script.rendered
}

data "template_file" "cloud_init_script" {
  template = file("cloud-init.yml")

  vars = {
    msg = "Groovy Baby"
  }
}

output "ipv4" {
  value = scaleway_instance_server.example06.public_ip
}
