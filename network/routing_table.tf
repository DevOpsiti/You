resource "aws_route_table" "public" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block =  var.route_table_public_cidr
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "public"
  }
}

resource "aws_route_table" "private1" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block =  var.route_table_private1_cidr
    gateway_id = aws_nat_gateway.gw1.id
  }

  tags = {
    Name = "private1"
  }
}

resource "aws_route_table" "private2" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block =  var.route_table_private2_cidr
    gateway_id = aws_nat_gateway.gw1.id
  }

  tags = {
    Name = "private2"
  }
}

