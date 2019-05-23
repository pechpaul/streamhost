# Authenticate
provider "scaleway" {
  organization = "organization id here"
  token        = "token here"
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