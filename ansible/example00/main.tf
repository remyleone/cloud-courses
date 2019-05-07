provider "scaleway" {
  region = "par1"
}

data "scaleway_image" "ansible_tuto" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
}

resource "scaleway_server" "ansible_tuto" {
  name                = "ansible_tuto-${count.index}"
  image               = "${data.scaleway_image.ansible_tuto.id}"
  type                = "START1-S"
  state               = "running"
  enable_ipv6         = true
  dynamic_ip_required = true
  count               = 3
}

output "ipv4" {
  value = "${scaleway_server.ansible_tuto.*.public_ip}"
}

data "template_file" "dev_hosts" {
  template = "${file("hosts.template")}"

  depends_on = ["scaleway_server.ansible_tuto"]

  vars {
    api_public = "${aws_instance.dev-api-gateway.private_ip}"
  }
}

resource "null_resource" "dev-hosts" {
  triggers {
    template_rendered = "${ data.template_file.dev_hosts.rendered }"
  }

  provisioner "local-exec" {
    command = "echo '${ data.template_file.dev_hosts.rendered }' > dev_hosts"
  }
}
