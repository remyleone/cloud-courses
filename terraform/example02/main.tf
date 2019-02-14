provider "scaleway" {
  region = "par1"
}

resource "scaleway_server" "example02" {
  name  = "example02"
  image = "27452e61-310e-4fe5-93af-0a0bdf4c20a6"
  type  = "START1-S"
  state = "stopped"
}

resource "scaleway_user_data" "cloud-init" {
  server = "${scaleway_server.example02.id}"
  key    = "cloud-init"

  value = <<CLOUD_INIT
#cloud-config

# final_message
# default: cloud-init boot finished at $TIMESTAMP. Up $UPTIME seconds
# this message is written by cloud-final when the system is finished
# its first boot
final_message: "The system is finally up, after $UPTIME seconds"
CLOUD_INIT
}
