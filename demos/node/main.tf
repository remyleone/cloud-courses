provider "scaleway" {
  region = "fr-par"
}

data "scaleway_image" "os" {
  architecture = "x86_64"
  name         = "Ubuntu Xenial"
}

resource "scaleway_instance_server" "demo_server" {
  name                = "example_node"
  image               = "${data.scaleway_image.os.id}"
  type                = "DEV1-S"
  enable_ipv6         = true
  dynamic_ip_required = true
  tags                = ["demo_node"]
}
