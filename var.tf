
# Defining CIDR Block for VPC
variable "vpc_cidr" {
  default = "192.168.0.0/16"
}

variable "private_subnet" {
  type    = list(string)
  default = ["192.168.1.0/24", "192.168.2.0/24"]
}

variable "public_subnet" {
  type    = list(string)
  default = ["192.168.3.0/24", "192.168.4.0/24"]
}

variable "private_subnet_tags" {
  type = list(string)
  default = ["Private Subnet1","Private Subnet2"]
}

variable "public_subnet_tags" {
  type = list(string)
  default = ["public Subnet1","public Subnet2"]
}

variable "aws_s3_bucket" {
    type = string
    default = "my_bucket_123"
}


variable "instance_count"{
    default = 1
}
