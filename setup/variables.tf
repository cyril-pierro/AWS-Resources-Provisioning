variable "vpc_name" {
  type    = string
  default = "vpc_name"
}

variable "gateway_name" {
  type = string
}
variable "subnet_name" {
  type    = string
  default = "subnet_name"
}

variable "subnet_public_cidr_block" {
  type    = string
  default = "10.0.1.0/24"
}

variable "subnet_private_cidr_block" {
  type    = string
  default = "10.0.2.0/24"
}

variable "route_table_cidr_block" {
  type    = string
  default = "10.0.1.0/24"
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "route_table_name" {
  type    = string
  default = "route_table_name"
}


variable "database_engine" {
  type = string
}


variable "database_version" {
  type = string
}

