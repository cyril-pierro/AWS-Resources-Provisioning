resource "aws_subnet" "public" {
  vpc_id     = var.main_vpc_id
  cidr_block = var.public_cidr_block

  tags = {
    Name = "${var.subnet_name}-public-subnet"
  }
}

resource "aws_subnet" "private" {
  vpc_id            = var.main_vpc_id
  availability_zone = var.availability_zone
  cidr_block        = var.private_cidr_block
  tags = {
    Name = "${var.subnet_name}-private-subnet"
  }
}


