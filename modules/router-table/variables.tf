variable "vpc_id" {
  type        = string
  description = "The vpc id"
}

variable "route_table_name" {
  type        = string
  description = "The route table name"
}


variable "gateway_id" {
  type        = string
  description = "The internet gateway id"
}


variable "cidr_block" {
  type    = string
  default = "10.0.1.0/23"
}
