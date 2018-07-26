data "scaleway_image" "example10_db" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
}

resource "scaleway_server" "example10_db" {
  name  = "${var.prefix}-example10_db"
  image = "${data.scaleway_image.example10_db.id}"
  type  = "${var.instance_type}"
  state = "running"
}
