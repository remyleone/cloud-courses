provider "scaleway" {
  region = "par1"
}

data "scaleway_image" "example03" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
}

resource "scaleway_server" "example03" {
  name  = "example03"
  image = "${data.scaleway_image.example03.id}"
  type  = "START1-S"
}
