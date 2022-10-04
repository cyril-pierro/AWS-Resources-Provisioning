resource "aws_route_table" "route_table" {
  vpc_id = var.vpc_id

  # Comment this is no route is defined
  route = []

  # route defined
  # route {
  #   cidr_block = var.cidr_block
  #   gateway_id = var.gateway_id
  # }

  tags = {
    Name = var.route_table_name
  }
}



resource "aws_route_table_association" "a_table_association" {
  gateway_id     = var.gateway_id
  route_table_id = aws_route_table.route_table.id
}
