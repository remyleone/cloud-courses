provider "scaleway" {
  region = "par1"
}

data "scaleway_image" "example06" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
}

resource "scaleway_server" "example06" {
  name                = "example06"
  image               = "${data.scaleway_image.example06.id}"
  type                = "START1-S"
  state               = "running"
  enable_ipv6         = true
  dynamic_ip_required = true
}

data "template_file" "cloud_init_script" {
  template = "${file("cloud-init.yml")}"

  vars {
    msg = "Groovy Baby"
  }
}

resource "scaleway_user_data" "cloud-init" {
  server = "${scaleway_server.example06.id}"
  key    = "cloud-init"
  value  = "${data.template_file.cloud_init_script.rendered}"
}

output "ipv4" {
  value = "${scaleway_server.example06.public_ip}"
}
