provider "aws" {
  region     = "ap-southeast-1"
}

variable "instancetype" {
  type = string
  default = "t2.small"
}

variable "userdata" {
  type = number

}

resource "aws_instance" "web" {
   ami = "ami-0615132a0f36d24f4"
   availability_zone = "ap-southeast-1a"
   instance_type = var.instancetype
   user_data = var.userdata
}
