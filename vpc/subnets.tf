resource "aws_subnet" "public_subnet1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "${var.public_cidr1}"
  availability_zone = "${var.public_subnet1}"
  tags = {
    Name = "public_subnet-1"
  }
}

resource "aws_subnet" "public_subnet2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "${var.public_cidr2}"
  availability_zone = "${var.public_subnet2}"
  tags = {
    Name = "public_subnet-2"
  }
}