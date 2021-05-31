provider "scaleway" {
  region       = "par1"
}

data "scaleway_image" "os" {
  architecture = "x86_64"
  name         = "Ubuntu Xenial"
}

resource "scaleway_instance_server" "demo_server" {
  name  = "example03"
  image = "${data.scaleway_image.os.id}"
  type  = "DEV1-S"
 enable_ipv6 = true
dynamic_ip_required  = true
tags = ["demo"]
}
