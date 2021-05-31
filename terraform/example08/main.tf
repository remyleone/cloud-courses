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

data "scaleway_marketplace_image" "example08" {
  instance_type = "DEV1-S"
  label         = "ubuntu_focal"
  zone          = "fr-par-1"
}

variable "tag_list" {
  type = list(string)

  default = [
    "foo",
    "bar",
  ]
}

variable "instance_type" {}

variable "name" {}

variable "state" {
  default = "stopped"
}

resource "scaleway_instance_server" "example08" {
  name  = var.name
  tags  = var.tag_list
  type  = var.instance_type
  state = var.state
  image = data.scaleway_marketplace_image.example08.id
}
