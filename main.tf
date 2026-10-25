terraform {
  required_version = ">= 1.10.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "local_file" "demo" {
  filename = "${path.module}/demo.txt"
  content  = "Managed by Terraform"
}

output "file_path" {
  value = local_file.demo.filename
}
