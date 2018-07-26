provider "scaleway" {
  region = "par1"
}

data "scaleway_image" "example13" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
}

# You need to create the resource in the console before importing

resource "scaleway_server" "example13" {
  name  = "example13"
  type  = "START1-S"
  image = "${data.scaleway_image.example13.id}"
}
