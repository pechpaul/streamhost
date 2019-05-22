# Authenticate
provider "scaleway" {
  organization = "09149d57-bf05-4cce-a94b-5a36ce6dfe5d"
  token        = "1480c668-80d1-4a4b-827e-f28c9651b22e"
  region = "ams1"
}
data "scaleway_image" "streamhost" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
}

resource "scaleway_server" "myServer" {
  name  = "streamhost"
  image = "${data.scaleway_image.streamhost.id}"
  type  = "START1-S"
  state = "stopped"
}

resource "scaleway_ip" "ip" {
  server = "51.15.98.200"
}