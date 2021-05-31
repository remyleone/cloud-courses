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

data "scaleway_marketplace_image" "example11" {
  instance_type = "DEV1-S"
  label         = "ubuntu_focal"
}

resource "scaleway_instance_volume" "vol" {
  size_in_gb = 20
  type       = "b_ssd"
}

resource "scaleway_instance_server" "example11" {
  name  = "example11"
  image = data.scaleway_marketplace_image.example11.id
  type  = "DEV1-S"
  state = "stopped"

  additional_volume_ids = [
    scaleway_instance_volume.vol.id
  ]
}
