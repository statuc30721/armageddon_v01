
# California Region
#
# Public Network

resource "aws_route_table" "public_California" {
  vpc_id = aws_vpc.VPC-G-California-Test.id
  provider = aws.california

  route   {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.igw_CALI.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    }
  
    tags = {
    Name = "public_California"
  }
}

#-----------------------------------------------#
#
# These are for the public subnets.

resource "aws_route_table_association" "public-us-west-1a" {
  subnet_id      = aws_subnet.public-us-west-1a.id
  route_table_id = aws_route_table.public_California.id
  provider = aws.california
}

resource "aws_route_table_association" "public-us-west-1b" {
  subnet_id      = aws_subnet.public-us-west-1b.id
  route_table_id = aws_route_table.public_California.id
  provider = aws.california
}

#-----------------------------------------------#
# Private Network

/*

resource "aws_route_table" "private_California" {
  vpc_id = aws_vpc.VPC-G-California-Test.id
  provider = aws.california
  
  
  route  {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.nat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    }

  tags = {
    Name = "private_California"
  }
}


# These are for the private subnets.

resource "aws_route_table_association" "private-us-west-1a" {
  subnet_id      = aws_subnet.private-us-west-1a.id
  route_table_id = aws_route_table.private_California.id
  provider = aws.california
}

resource "aws_route_table_association" "private-eu-west-2b" {
  subnet_id      = aws_subnet.private-us-west-1b.id
  route_table_id = aws_route_table.private_California.id
  provider = aws.california
}

*/

