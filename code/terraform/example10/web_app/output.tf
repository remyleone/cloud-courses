output "web_public_ipv4" {
  value = "${scaleway_server.example10_web.public_ip}"
}

output "web_private_ipv4" {
  value = "${scaleway_server.example10_web.private_ip}"
}

output "db_private_ipv4" {
  value = "${scaleway_server.example10_db.private_ip}"
}
