provider "scaleway" {
  region = "par1"
}

resource "scaleway_server" "example01" {
  name  = "example01"
  image = "27452e61-310e-4fe5-93af-0a0bdf4c20a6"
  type  = "START1-S"
}
