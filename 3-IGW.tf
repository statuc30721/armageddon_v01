resource "aws_internet_gateway" "igw_TYO" {
  vpc_id = aws_vpc.VPC-A-Tokyo-Test.id
  provider = aws.tokyo


  tags = {
    Name    = "application1_TYO_IGW"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

