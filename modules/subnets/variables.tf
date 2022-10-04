variable "main_vpc_id" {
  type        = string
  description = "The id of the main vpc created"
}

variable "subnet_name" {
  type        = string
  description = "The subnet name for the vpc"
}


variable "public_cidr_block" {
  type        = string
  description = "10.0.1.0/24"
}

variable "private_cidr_block" {
  type        = string
  description = "10.0.2.0/24"
}

variable "availability_zone" {
  type    = string
  default = "us-east-1a"
}
