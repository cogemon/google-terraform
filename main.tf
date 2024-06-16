provider "google" {
  project     = "konotalos"
  region      = "asia-northeast1"
}

#resource "google_compute_network" "vpc_network" {
#  name = "coge"
#}

resource "google_compute_network" "masakichi_network" {
  name = "masakichi"
}

resource "google_compute_network" "masakichi_network2" {
  name = "masakichi2"
}

terraform {
  backend "gcs" {
    bucket  = "konotalos-terraform-state"
    prefix  = "terraform/state"
  }
}
