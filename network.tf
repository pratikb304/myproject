#Network Configuration for VPC auto subnet

resource "google_compute_network" "network1" {
    name = "network1"
  
}


# Firewall Configuration for ingress and Egress Traffic 

resource "google_compute_firewall" "allow-all-ingress" {
    name = "allow-all-ingress"
    network = google_compute_network.network1.name

    source_tags = ["web"]


    allow {
      protocol = "icmp"
    }

    allow {
      protocol = "tcp"
      ports = ["0-65535"]

    }

    allow {
      protocol = "udp"
      ports = ["0-65535"]

    }
  
}

# Firewall Configuration for ingress and Egress Traffic 

resource "google_compute_firewall" "allow-all-egress" {
    name = "allow-all-egress"
    network = google_compute_network.network1.name
    direction = "EGRESS"


    allow {
      protocol = "icmp"
    }

    allow {
      protocol = "tcp"
      ports = ["0-65535"]

    }

    allow {
      protocol = "udp"
      ports = ["0-65535"]
      
    }
  
}

resource "google_compute_firewall" "allow-ssh" {
    name = "allow-ssh"
    network = google_compute_network.network1.name

    source_ranges = ["0.0.0.0/0"]

    allow {
      protocol = "tcp"
      ports = ["22"]

    }

    allow {
      protocol = "tcp"
      ports = ["3389"]

    }
  
}

resource "google_compute_network" "network2" {
    name = "network2"
    auto_create_subnetworks = true
  
}