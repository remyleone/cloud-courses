provider "scaleway" {
  region = "par1"
}

data "scaleway_image" "example14" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
}

resource "scaleway_server" "example14" {
  name                = "example14-${terraform.workspace}"
  image               = "${data.scaleway_image.example14.id}"
  type                = "START1-S"
  state               = "running"
  enable_ipv6         = true
  dynamic_ip_required = true
}

output "instance_ip" {
  value = "${scaleway_server.example14.public_ip}"
}
