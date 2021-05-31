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

locals {
  server_prefix = "my_server_prefix"
}

resource "scaleway_instance_server" "example04-web" {
  name  = "${local.server_prefix}-web"
  image = "ff48b73a-097d-4685-b996-d3ebe50636ea"
  type  = "DEV1-S"
  state = "stopped"
}

resource "scaleway_instance_server" "example04-db" {
  name  = "${local.server_prefix}-db"
  image = "ff48b73a-097d-4685-b996-d3ebe50636ea"
  type  = "DEV1-S"
  state = "stopped"
}
