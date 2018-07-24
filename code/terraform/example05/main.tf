locals {
  name = "foobar"
}

output "my_output" {
  value = "${local.name}"
}
