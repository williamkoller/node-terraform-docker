terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

resource "docker_container" "node-terraform-docker" {
  image = "node-terraform-docker:latest"
  name  = "node-terraform-docker"
  restart = "always"
  volumes {
    container_path  = "/app"
     
    read_only = false
  }
  ports {
    internal = 3000
    external = 3000
  }
}