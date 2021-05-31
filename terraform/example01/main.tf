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

resource "scaleway_instance_server" "example01" {
  name  = "example01"
  image = "ff48b73a-097d-4685-b996-d3ebe50636ea"
  type  = "DEV1-S"
}
