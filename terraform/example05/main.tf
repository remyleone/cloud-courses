terraform {
  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
      version = "2.1.0"
    }
  }
}

locals {
  name = "foobar"
}

output "my_output" {
  value = local.name
}
