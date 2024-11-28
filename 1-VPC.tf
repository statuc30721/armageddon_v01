# Setup Deployment environment with a VPC
# for each region.

# Tokyo

resource "aws_vpc" "VPC-A-Tokyo-Test" {
    
    provider = aws.tokyo
    cidr_block = "10.20.0.0/16"

  tags = {
    Name = "VPC-A-Tokyo-Test"
    Service = "application1"
    Owner = "Frodo"
    Planet = "Arda"
  }
}


# New York

resource "aws_vpc" "VPC-B-NewYork-Test" {
    provider = aws.newyork
    cidr_block = "10.21.0.0/16"
  

  tags = {
    Name = "VPC-B-NewYork-Test"
    Service = "application1"
    Owner = "Frodo"
    Planet = "Arda"
  }
}

# London
resource "aws_vpc" "VPC-C-London-Test" {
    provider = aws.london
  cidr_block = "10.22.0.0/16"

  tags = {
    Name = "VPC-C-London-Test"
    Service = "application1"
    Owner = "Frodo"
    Planet = "Arda"
  }
}
# Sao Paulo
resource "aws_vpc" "VPC-D-SaoPaolo-Test" {
    provider = aws.saopaulo
  cidr_block = "10.23.0.0/16"

  tags = {
    Name = "VPC-D-SaoPaolo-Test"
    Service = "application1"
    Owner = "Frodo"
    Planet = "Arda"
  }
}
# Australia
resource "aws_vpc" "VPC-E-Australia-Test" {
    provider = aws.australia
  cidr_block = "10.24.0.0/16"

  tags = {
    Name = "VPC-E-Australia-Test"
    Service = "application1"
    Owner = "Frodo"
    Planet = "Arda"
  }
}
# Hong Kong
resource "aws_vpc" "VPC-F-HongKong-Test" {
    provider = aws.hongkong
  cidr_block = "10.25.0.0/16"

  tags = {
    Name = "VPC-F-HongKong-Test"
    Service = "application1"
    Owner = "Frodo"
    Planet = "Arda"
  }
}


# California  
resource "aws_vpc" "VPC-G-California-Test" {
    provider = aws.california
    cidr_block = "10.26.0.0/16"

  tags = {
    Name = "VPC-G-California-Test"
    Service = "application1"
    Owner = "Frodo"
    Planet = "Arda"
  }
}