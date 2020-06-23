provider "google" {
  project = "your-project-name-12345"
  region  = "us-east1"
  zone    = "us-east1-b"
}

resource "google_compute_instance" "default" {
  name         = "test-vm"
  machine_type = "n1-standard-1"
  zone         = "us-east1-b"
  project      = "your-project-name-12345"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}
