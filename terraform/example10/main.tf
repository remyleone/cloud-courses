terraform {
  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
      version = "2.1.0"
    }
  }
}

provider "scaleway" {
  region = "fr-par"
}

module "dev" {
  source        = "./web_app"
  instance_type = "DEV1-S"
  prefix        = "dev"
}

module "prod" {
  source        = "./web_app"
  instance_type = "DEV1-S"
  prefix        = "prod"
}

output "dev_web_ipv4" {
  value = module.dev.web_public_ipv4
}

output "prod_web_ipv4" {
  value = module.prod.web_public_ipv4
}

output "dev_web_private_ipv4" {
  value = module.dev.web_private_ipv4
}

output "prod_web_private_ipv4" {
  value = module.prod.web_private_ipv4
}

output "dev_db_private_ipv4" {
  value = module.dev.db_private_ipv4
}

output "prod_db_private_ipv4" {
  value = module.prod.db_private_ipv4
}
