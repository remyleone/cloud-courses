provider "scaleway" {
  region = "par1"
}

data "scaleway_image" "example11" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
}

resource "scaleway_server" "example11" {
  name  = "example11"
  image = "${data.scaleway_image.example11.id}"
  type  = "START1-S"
  state = "stopped"

  volume {
    size_in_gb = 20
    type       = "l_ssd"
  }
}
