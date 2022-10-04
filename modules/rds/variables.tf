variable "allocated_storage" {
  type    = number
  default = 10
}

variable "db_name" {
  type    = string
  default = "testing_db"
}


variable "engine" {
  type        = string
  default     = "mysql"
  description = "The database type of the instance"
}

variable "engine_version" {
  type        = string
  default     = "5.7"
  description = "The engine version the specified engine"
}


variable "instance_class" {
  type        = string
  default     = "db.t3.micro"
  description = "The instance class for the database"
}

variable "db_username" {
  type        = string
  default     = "foo"
  description = "The database username"
}

variable "db_password" {
  type        = string
  default     = "foobarbaz"
  description = "The password for the database"
}

variable "parameter_group_name" {
  type        = string
  default     = "default.database.version"
  description = "The parameter group name"
}

variable "max_allocated_storage" {
  type        = number
  default     = 200
  description = "The maximum allocated storage given to an instance"
}

variable "allow_major_version_upgrade" {
  type        = bool
  default     = false
  description = "should version upgrades to done"
}

variable "apply_immediately" {
  type        = bool
  default     = false
  description = "should modifications be applied immediately"
}

variable "availability_zone" {
  type        = string
  default     = "us-east-1a"
  description = "the zone for the rds"
}

variable "backup_retention_period" {
  type        = number
  default     = 35
  description = "The total number of retention period"
}

variable "port" {
  type        = number
  default     = 1111
  description = "The port number for the database"
}
