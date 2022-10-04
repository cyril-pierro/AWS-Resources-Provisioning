variable "zone_name" {
  type    = string
  default = "example.com"
}

variable "vpc_id" {
  type = string
}
# General variable rule
# Eg: {record1 = {}, record2= {}}


# Set all name server records with this variable scope
variable "name_servers_records" {
  type = map(object({
    name : string
    ttl : number
    type : string
  }))
  default = {
    "record1" = {
      name = "example.com"
      ttl  = 100
      type = "NS"
    }
  }
}


# Set all txt  records with this variable scope
variable "txt_records" {
  type = map(object({
    name : string
    ttl : number
    type : string
  }))
  default = {
    "record1" = {
      name = "txt_record name"
      ttl  = 1800
      type = "TXT"
    }
  }
}


# Set all mx records with this variable scope
variable "mx_records" {
  type = map(object({
    name : string
    ttl : number
    type : string
  }))
  default = {
    "record1" = {
      name = "mx_record name"
      ttl  = 1800
      type = "MX"
    }
  }
}



variable "records_txt" {
  type = list(string)
  default = [
    "protonmail-verification=<random_number>",
    "v=spf1 include:_spf.protonmail.ch mx ~all"
  ]
}


variable "records_mx" {
  type = list(string)
  default = [
    "10 mail.protonmail.ch.",
    "20 mailsec.protonmail.ch."
  ]
}


variable "port" {
  type    = number
  default = 80
}

variable "protocol_type" {
  type    = string
  default = "HTTP"
}

variable "resource_path" {
  type    = string
  default = "/"
}
variable "failure_threshold" {
  type    = string
  default = "5"
}

variable "request_interval" {
  type    = string
  default = "30"
}
variable "health_check_name" {
  type    = string
  default = "Test-health-check"
}
