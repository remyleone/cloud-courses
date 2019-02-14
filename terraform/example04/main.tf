provider "scaleway" {
  region = "par1"
}

locals {
  server_prefix = "my_server_prefix"
}

resource "scaleway_server" "example04-web" {
  name  = "${local.server_prefix}-web"
  image = "27452e61-310e-4fe5-93af-0a0bdf4c20a6"
  type  = "START1-S"
  state = "stopped"
}

resource "scaleway_server" "example04-db" {
  name  = "${local.server_prefix}-db"
  image = "27452e61-310e-4fe5-93af-0a0bdf4c20a6"
  type  = "START1-S"
  state = "stopped"
}
