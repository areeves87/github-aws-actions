variable "aws_accesskey" {}

variable "aws_secretkey" {}

variable "aws_region" {
    type = string
    default = "us-east-2"
}

variable "image_name" {
    type = string
    default = "flask-tutorial"
}

variable "image_tag" {
    type = string
    default = "latest"
}