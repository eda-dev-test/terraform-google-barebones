resource "google_compute_instance" "this" {
  name         = var.name
  machine_type = var.machine_type
  zone         = "us-central1-a"

  tags = var.tags

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
  }

  metadata = var.metadata

  metadata_startup_script = "echo hi > /test.txt"

}