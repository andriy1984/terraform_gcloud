resource "google_compute_network" "vpc" {
  name = "${var.name_project}-vpc"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "subnet" {
  ip_cidr_range = "10.87.112.0/20"
  name = "${var.name_project}"
  region = "${var.region}"
  network = "${google_compute_network.vpc.self_link}"
}