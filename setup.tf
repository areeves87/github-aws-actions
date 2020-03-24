provider "aws" {
  region = var.aws_region
  access_key = var.aws_accesskey
  secret_key = var.aws_secretkey
}

resource "aws_ecr_repository" "this" {
  name = "another-api-repo"
}

resource "null_resource" "docker_build" {
  
  # triggers = {
  #   always_run = "${timestamp()}"
  # }

  provisioner "local-exec" {
    command = <<EOT
      docker build -t ${var.image_name}:${var.image_tag} .
    EOT
    }
}