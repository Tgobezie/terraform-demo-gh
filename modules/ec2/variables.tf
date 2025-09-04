# Variables

variable "instance_type" {
  default = "t2.micro"
}

variable "image_id" {
  default = "ami-00ca32bbc84273381"

}

variable "demohostname" {
  default = "terraform-demo1"
}

variable "key_name" {
  default = "demo_key"
}

variable "platform" {
  default = "Linux"
}

variable "application" {
  default = "terraform demo"
}

variable "environment" {
  default = "dev"
}

variable "sgroup" {

}

variable "sub" {
  
}
