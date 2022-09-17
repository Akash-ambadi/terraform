resource "aws_subnet" "subnet1-public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet1_cidr
  availability_zone = var.sub1_avl_zone
  tags = {
    Name = "subnet1.pub"
  }
  depends_on = [
    aws_subnet.subnet2-public
  ]
}

resource "aws_subnet" "subnet2-public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet2_cidr
  availability_zone = var.sub2_avl_zone
  tags = {
    Name = "subnet2.pub"
  }
  depends_on = [
    aws_subnet.subnet3-public
  ]
}

resource "aws_subnet" "subnet3-public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet3_cidr
  availability_zone = var.sub3_avl_zone
  tags = {
    Name = "subnet3.pub"
  }

}
