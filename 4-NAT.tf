# Build a NAT for Tokyo datacenter.

resource "aws_eip" "nat" {
  vpc = true
  

  tags = {
    Name = "nat"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public-ap-northeast-1a.id

  provider = aws.tokyo

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.igw_TYO]
}
