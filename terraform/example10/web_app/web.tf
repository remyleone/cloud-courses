data "scaleway_image" "example10_web" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
}

resource "scaleway_server" "example10_web" {
  name                = "${var.prefix}-example10_web"
  image               = "${data.scaleway_image.example10_web.id}"
  type                = "${var.instance_type}"
  state               = "running"
  enable_ipv6         = true
  dynamic_ip_required = true

  security_group = "${scaleway_security_group.http.id}"
}
