terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.0.0"
    }
  }
}

provider "google" {
  credentials = file("./webookit-852c80b31365.json")
  project     = "webookit"
  region      = "europe-west4"
  zone        = "europe-west4-b"
}

resource "google_compute_network" "vpc_network" {
  name = "webookit-network"
}