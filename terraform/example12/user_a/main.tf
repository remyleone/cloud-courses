terraform {

  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
      version = "2.1.0"
    }
  }

  backend "consul" {
    address = "localhost:8500"
    scheme  = "http"
    path    = "example_app/terraform_state"
  }
}

provider "scaleway" {
  region = "fr-par"
}

# You need to create the resource in the console before importing

resource "scaleway_instance_server" "example12" {
  name  = "example12"
  type  = "DEV1-S"
  image = "ubuntu_focal"
}
