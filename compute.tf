# Vm instance creation


resource "google_compute_instance" "default" {
    name = "master"
    machine_type = "e2-medium"
    zone = var.zone

    boot_disk {
      initialize_params {
        image = "projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20240307b"
        size = 20
      }
    }

      network_interface {
        network="network1"
         access_config {}
      }
    }

resource "google_compute_instance" "mydevops" {
    name = "worker1"
    machine_type = "e2-medium"
    zone = var.zone

    boot_disk {
      initialize_params {
        image = "projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20240307b"
        size = 20
      }
    }

      network_interface {
        network="network1"
         access_config {}
      }
    }    
  

 resource "google_compute_instance" "minikube-server" {
     name = "minikube"
     machine_type = "n2-standard-2"
     zone = var.zone

     boot_disk {
       initialize_params {
         image = "projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20240307b"
         size = 20
       }
     }

       network_interface {
         network="network1"
         access_config {}
         }
       } 



# code for multiple instances 

# resource "google_compute_instance" "vmloop" {
#     for_each = {
#       "vm1" = {size="e2-small", zone="us-central1-c"}
#       "vm2" = {size="e2-small", zone="us-central1-c"} 
#       "vm3" = {size="e2-small", zone="us-central1-c"}
#       "vm4" = {size="e2-small", zone="us-central1-c"}
#       "vm5" = {size="e2-small", zone="us-central1-c"}
#     }

#     name = each.key
#     machine_type = each.value.size
#     zone = each.value.zone

#     boot_disk {
#         initialize_params {
#           image = "projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20240307b"
#         }
      
#     }

#     network_interface {
#         network = "network1"
      
#     }
  
# }



