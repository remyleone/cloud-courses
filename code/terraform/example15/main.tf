provider "scaleway" {
  region = "par1"
}

resource "scaleway_server" "web" {
  name  = "example15-web-${count.index}"
  image = "27452e61-310e-4fe5-93af-0a0bdf4c20a6"
  type  = "START1-S"
  state = "stopped"
  count = 3
}

resource "scaleway_server" "web-final" {
  name  = "example15-final"
  image = "27452e61-310e-4fe5-93af-0a0bdf4c20a6"
  type  = "START1-S"
  state = "stopped"

  depends_on = ["scaleway_server.web"]
}
