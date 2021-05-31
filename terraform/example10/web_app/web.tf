data "scaleway_marketplace_image" "example10_web" {
  instance_type = "DEV1-S"
  label         = "ubuntu_focal"
}

resource "scaleway_instance_server" "example10_web" {
  name              = "${var.prefix}-example10_web"
  image             = data.scaleway_marketplace_image.example10_web.id
  type              = var.instance_type
  enable_ipv6       = true
  enable_dynamic_ip = true

  security_group_id = scaleway_instance_security_group.http.id
}
