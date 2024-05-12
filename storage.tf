

# create storage bucket

resource "google_storage_bucket" "gcpwork" {
    name = "gcp-work-pratt"
    project = var.project_id
    force_destroy = true
    location = "us"
    uniform_bucket_level_access = true
  
}
