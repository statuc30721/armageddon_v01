# AWS Internet Gateway Configuration
# 
# Tokyo Region
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

# New York Region
resource "aws_internet_gateway" "igw_NY" {
  vpc_id = aws_vpc.VPC-B-NewYork-Test.id
  provider = aws.newyork


  tags = {
    Name    = "application1_NY_IGW"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

# London Region
resource "aws_internet_gateway" "igw_LON" {
  vpc_id = aws_vpc.VPC-C-London-Test.id
  provider = aws.london


  tags = {
    Name    = "application1_LON_IGW"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

# Sao Paolo Region
resource "aws_internet_gateway" "igw_SAO" {
  vpc_id = aws_vpc.VPC-D-SaoPaolo-Test.id
  provider = aws.saopaulo


  tags = {
    Name    = "application1_SAO_IGW"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

# Australia Region
resource "aws_internet_gateway" "igw_AUS" {
  vpc_id = aws_vpc.VPC-E-Australia-Test.id
  provider = aws.australia


  tags = {
    Name    = "application1_AUS_IGW"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

# Hong Kong Region
resource "aws_internet_gateway" "igw_HK" {
  vpc_id = aws_vpc.VPC-F-HongKong-Test.id
  provider = aws.hongkong


  tags = {
    Name    = "application1_HK_IGW"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

# California Region
resource "aws_internet_gateway" "igw_CALI" {
  vpc_id = aws_vpc.VPC-G-California-Test.id
  provider = aws.california


  tags = {
    Name    = "application1_CALI_IGW"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}