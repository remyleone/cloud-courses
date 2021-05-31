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

resource "scaleway_instance_server" "web" {
  name  = "example15-web-${count.index}"
  image = "ff48b73a-097d-4685-b996-d3ebe50636ea"
  type  = "DEV1-S"
  state = "stopped"
  count = 3
}

resource "scaleway_instance_server" "web-final" {
  name  = "example15-final"
  image = "ff48b73a-097d-4685-b996-d3ebe50636ea"
  type  = "DEV1-S"
  state = "stopped"

  depends_on = ["scaleway_instance_server.web"]
}
