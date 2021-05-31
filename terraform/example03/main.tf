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

data "scaleway_marketplace_image" "example03" {
  label = "ubuntu_focal"
  instance_type = "DEV1-S"

}

resource "scaleway_instance_server" "example03" {
  name  = "example03"
  image = data.scaleway_marketplace_image.example03.id
  type  = "DEV1-S"
}
