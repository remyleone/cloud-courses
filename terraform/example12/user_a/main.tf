terraform {
  backend "consul" {
    address = "localhost:8500"
    scheme  = "http"
    path    = "example_app/terraform_state"
  }
}

provider "scaleway" {
  region = "par1"
}

data "scaleway_image" "example12" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
}

# You need to create the resource in the console before importing

resource "scaleway_server" "example12" {
  name  = "example12"
  type  = "START1-S"
  image = "${data.scaleway_image.example12.id}"
}
