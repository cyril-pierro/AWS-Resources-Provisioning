resource "aws_db_instance" "default" {
  allocated_storage           = var.allocated_storage
  max_allocated_storage       = var.max_allocated_storage
  db_name                     = var.db_name
  engine                      = var.engine
  engine_version              = var.engine_version
  instance_class              = var.instance_class
  username                    = var.db_username
  password                    = var.db_password
  parameter_group_name        = "default.${var.engine}${var.engine_version}"
  skip_final_snapshot         = true
  allow_major_version_upgrade = var.allow_major_version_upgrade
  apply_immediately           = var.apply_immediately
  availability_zone           = var.availability_zone
  backup_retention_period     = var.backup_retention_period
  identifier                  = "${var.db_username}-${var.engine}"
  tags = {
    Name = "${var.db_name}-${var.engine}"
  }
}
