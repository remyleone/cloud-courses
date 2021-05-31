resource "scaleway_instance_security_group" "http" {
  name        = "http"
  description = "allow HTTP and HTTPS traffic"
}

resource "scaleway_instance_security_group_rules" "http_accept" {
  security_group_id = scaleway_instance_security_group.http.id

  inbound_rule {
    action   = "accept"
    ip_range = "0.0.0.0/0"
    protocol = "TCP"
    port     = 80
  }
}

resource "scaleway_instance_security_group_rules" "https_accept" {
  security_group_id = scaleway_instance_security_group.http.id

  inbound_rule {
    action   = "accept"
    ip_range = "0.0.0.0/0"
    protocol = "TCP"
    port     = 443
  }
}
