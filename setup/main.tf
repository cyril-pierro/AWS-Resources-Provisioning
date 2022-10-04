
# Setup for Vpc
module "vpc" {
  source     = "../modules/vpc"
  vpc_name   = var.vpc_name
  cidr_block = var.vpc_cidr_block

  # can use other parameter configurations
  # here

}


# Setup for Vpc Subnet
module "subnet" {
  source             = "../modules/subnets"
  main_vpc_id        = module.vpc.vpc_id
  subnet_name        = var.subnet_name
  public_cidr_block  = var.subnet_public_cidr_block
  private_cidr_block = var.subnet_private_cidr_block

  # can use other parameter configurations
  # here

  depends_on = [
    module.vpc
  ]
}


# Setup for Internet Gateway
module "internet_gateway" {
  source       = "../modules/internet-gateway"
  vpc_id       = module.vpc.vpc_id
  gateway_name = var.gateway_name

  # can use other parameter configurations
  # here

  depends_on = [
    module.vpc
  ]
}


# Setup for Router Table
module "router_table" {
  source           = "../modules/router-table"
  gateway_id       = module.internet_gateway.gateway_id
  vpc_id           = module.vpc.vpc_id
  route_table_name = var.route_table_name
  # can use other parameter configurations
  # here

  depends_on = [
    module.internet_gateway
  ]
}


# Setup for RDS
module "rds" {
  source         = "../modules/rds"
  engine         = var.database_engine
  engine_version = var.database_version
  depends_on = [
    module.vpc
  ]
  # can use other parameter configurations
  # here
}


# Setup for Router 53
module "router_53" {
  source = "../modules/router-53"
  vpc_id = module.vpc.vpc_id

  depends_on = [
    module.vpc
  ]
  # can use other parameter configurations
  # here
}


