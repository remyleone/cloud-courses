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

# You need to create the resource in the console before importing

resource "scaleway_instance_server" "example13" {
  name  = "example13"
  type  = "DEV1-S"
  image = "ubuntu_focal"
}
