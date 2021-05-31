data "scaleway_marketplace_image" "example10_db" {
  instance_type = "DEV1-S"
  label         = "ubuntu_focal"
}


resource "scaleway_instance_server" "example10_db" {
  name  = "${var.prefix}-example10_db"
  image = data.scaleway_marketplace_image.example10_db.id
  type  = var.instance_type
}
