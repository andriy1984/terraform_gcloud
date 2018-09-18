provider "google" {
  credentials = "${file("/home/andriy/.gcloud/atom.json")}"
  project     = "deft-gearbox-216813"
  region      = "us-central1"
}

data "google_compute_zones" "available" {

}

module "network" {
  source = "./network"
  name_project = "${var.project_name}"
  //vpc_zone = "${data.google_compute_zones.available.names}"
  region = "${var.region}"
}