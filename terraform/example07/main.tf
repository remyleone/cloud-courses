provider "scaleway" {
  region = "par1"
}

provider "scaleway" {
  region = "ams1"
  alias  = "amsterdam"
}

data "scaleway_image" "par" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
}

data "scaleway_image" "ams" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
  provider     = "scaleway.amsterdam"
}

resource "scaleway_server" "example07_par" {
  name  = "example07-paris"
  image = "${data.scaleway_image.par.id}"
  type  = "DEV1-S"
  state = "stopped"
}

resource "scaleway_server" "example07_ams" {
  name     = "example07-amsterdam"
  image    = "${data.scaleway_image.ams.id}"
  type     = "DEV1-S"
  state    = "stopped"
  provider = "scaleway.amsterdam"
}
