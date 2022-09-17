resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myIGW.id
  }

  tags = {
    Name = "public-route-table"
  }
}

resource "aws_route_table_association" "subnet1-public" {
  subnet_id      = aws_subnet.subnet1-public.id
  route_table_id = aws_route_table.public-route-table.id
}

resource "aws_route_table_association" "subnet2-public" {
  subnet_id      = aws_subnet.subnet2-public.id
  route_table_id = aws_route_table.public-route-table.id
}
resource "aws_route_table_association" "subnet3-public" {
  subnet_id      = aws_subnet.subnet3-public.id
  route_table_id = aws_route_table.public-route-table.id
}
