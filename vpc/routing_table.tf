resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = "IGW-444"
  }
}


resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.my_vpc.id


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }


  tags = {
    name = "public"
  }
}
resource "aws_route_table_association" "public1" {
  subnet_id      = "${aws_subnet.public_subnet1}" 
  route_table_id = aws_route_table.public_rt.id
}

}
resource "aws_route_table_association" "public2" {
  subnet_id      = "${aws_subnet.public_subnet2}" 
  route_table_id = aws_route_table.public_rt.id
}