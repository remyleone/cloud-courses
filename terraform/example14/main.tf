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

resource "scaleway_instance_server" "example14" {
  name              = "example14-${terraform.workspace}"
  image             = "ubuntu_focal"
  type              = "DEV1-S"
  enable_ipv6       = true
  enable_dynamic_ip = true
}

output "instance_ip" {
  value = scaleway_instance_server.example14.public_ip
}
