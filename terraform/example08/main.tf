provider "scaleway" {
  region = "par1"
}

data "scaleway_image" "example08" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
}

variable "tag_list" {
  type = "list"

  default = [
    "foo",
    "bar",
  ]
}

variable "instance_type" {}

variable "name" {}

variable "state" {
  default = "stopped"
}

resource "scaleway_server" "example08" {
  name  = "${var.name}"
  tags  = "${var.tag_list}"
  type  = "${var.instance_type}"
  state = "${var.state}"
  image = "${data.scaleway_image.example08.id}"
}
