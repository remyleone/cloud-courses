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

provider "scaleway" {
  region = "nl-ams"
  alias  = "amsterdam"
}

data "scaleway_marketplace_image" "par" {
  instance_type = "DEV1-S"
  label         = "ubuntu_focal"
  zone          = "fr-par-1"
}

data "scaleway_marketplace_image" "ams" {
  instance_type = "DEV1-S"
  label         = "ubuntu_focal"
  provider      = "scaleway.amsterdam"
}

resource "scaleway_instance_server" "example07_par" {
  name  = "example07-paris"
  image = data.scaleway_marketplace_image.par.id
  type  = "DEV1-S"
  state = "stopped"
}

resource "scaleway_instance_server" "example07_ams" {
  name     = "example07-amsterdam"
  image    = data.scaleway_marketplace_image.ams.id
  type     = "DEV1-S"
  state    = "stopped"
  provider = "scaleway.amsterdam"
}
