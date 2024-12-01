
#  Tokyo VPC Public IP space.
resource "aws_subnet" "public-ap-northeast-1a" {
    vpc_id                  = aws_vpc.VPC-A-Tokyo-Test.id
    cidr_block              = "10.20.1.0/24"
    availability_zone       = "ap-northeast-1a"
    map_public_ip_on_launch = true
    provider = aws.tokyo

    tags = {
    Name    = "public-ap-northeast-1a"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
    }
}




resource "aws_subnet" "public-ap-northeast-1c" {
  vpc_id                  = aws_vpc.VPC-A-Tokyo-Test.id
  cidr_block              = "10.20.2.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = true
  provider = aws.tokyo

  tags = {
    Name    = "public-ap-northeast-1c"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

# Tokyo Private IP space.

resource "aws_subnet" "private-ap-northeast-1a" {
  vpc_id                  = aws_vpc.VPC-A-Tokyo-Test.id
  cidr_block              = "10.20.11.0/24"
  availability_zone       = "ap-northeast-1a"
  provider = aws.tokyo
  
  tags = {
    Name    = "private-ap-northeast-1a"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

resource "aws_subnet" "private-ap-northeast-1c" {
  vpc_id                  = aws_vpc.VPC-A-Tokyo-Test.id
  cidr_block              = "10.20.12.0/24"
  availability_zone       = "ap-northeast-1c"
  provider = aws.tokyo

  tags = {
    Name    = "private-ap-northeast-1c"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}
#------------------------------------------------------------#

# New York VPC Public IP space.
resource "aws_subnet" "public-us-east-1a" {
  vpc_id                  = aws_vpc.VPC-B-NewYork-Test.id
  cidr_block              = "10.21.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  provider = aws.newyork

  tags = {
    Name    = "public-us-east-1a"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

resource "aws_subnet" "public-us-east-1b" {
  vpc_id                  = aws_vpc.VPC-B-NewYork-Test.id
  cidr_block              = "10.21.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  provider = aws.newyork

  tags = {
    Name    = "public-us-east-1b"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

# New York Private IP space.

resource "aws_subnet" "private-us-east-1a" {
  vpc_id                  = aws_vpc.VPC-B-NewYork-Test.id
  cidr_block              = "10.21.11.0/24"
  availability_zone       = "us-east-1a"
  provider = aws.newyork
  
  tags = {
    Name    = "private-us-east-1a"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

resource "aws_subnet" "private-us-east-1b" {
  vpc_id                  = aws_vpc.VPC-B-NewYork-Test.id
  cidr_block              = "10.21.12.0/24"
  availability_zone       = "us-east-1b"
  provider = aws.newyork

  tags = {
    Name    = "private-us-east-1b"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}
#---------------------------------------------#

#  london VPC Public IP space.
resource "aws_subnet" "public-eu-west-2a" {
    vpc_id                  = aws_vpc.VPC-C-London-Test.id
    cidr_block              = "10.22.1.0/24"
    availability_zone       = "eu-west-2a"
    map_public_ip_on_launch = true
    provider = aws.london

    tags = {
    Name    = "public-eu-west-2a"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
    }
}




resource "aws_subnet" "public-eu-west-2b" {
  vpc_id                  = aws_vpc.VPC-C-London-Test.id
  cidr_block              = "10.22.2.0/24"
  availability_zone       = "eu-west-2b"
  map_public_ip_on_launch = true
  provider = aws.london

  tags = {
    Name    = "public-eu-west-2b"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

# london Private IP space.

resource "aws_subnet" "private-eu-west-2a" {
  vpc_id                  = aws_vpc.VPC-C-London-Test.id
  cidr_block              = "10.22.11.0/24"
  availability_zone       = "eu-west-2a"
  provider = aws.london
  
  tags = {
    Name    = "private-eu-west-2a"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

resource "aws_subnet" "private-eu-west-2b" {
  vpc_id                  = aws_vpc.VPC-C-London-Test.id
  cidr_block              = "10.22.12.0/24"
  availability_zone       = "eu-west-2b"
  provider = aws.london

  tags = {
    Name    = "private-eu-west-2b"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

#------------------------------------------------------#

#  Sao Paulo VPC Public IP space.
resource "aws_subnet" "public-sa-east-1a" {
    vpc_id                  = aws_vpc.VPC-D-SaoPaolo-Test.id
    cidr_block              = "10.23.1.0/24"
    availability_zone       = "sa-east-1a"
    map_public_ip_on_launch = true
    provider = aws.saopaulo

    tags = {
    Name    = "public-sa-east-1a"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
    }
}


resource "aws_subnet" "public-sa-east-1b" {
  vpc_id                  = aws_vpc.VPC-D-SaoPaolo-Test.id
  cidr_block              = "10.23.2.0/24"
  availability_zone       = "sa-east-1b"
  map_public_ip_on_launch = true
  provider = aws.saopaulo

  tags = {
    Name    = "public-sa-east-1b"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

# Sao Paulo Private IP space.

resource "aws_subnet" "private-sa-east-1a" {
  vpc_id                  = aws_vpc.VPC-D-SaoPaolo-Test.id
  cidr_block              = "10.23.11.0/24"
  availability_zone       = "sa-east-1a"
  provider = aws.saopaulo
  
  tags = {
    Name    = "private-sa-east-1a"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

resource "aws_subnet" "private-sa-east-1b" {
  vpc_id                  = aws_vpc.VPC-D-SaoPaolo-Test.id
  cidr_block              = "10.23.12.0/24"
  availability_zone       = "sa-east-1b"
  provider = aws.saopaulo

  tags = {
    Name    = "private-sa-east-1b"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

#------------------------------------------------------#
# Australia 

#  Australia VPC Public IP space.
resource "aws_subnet" "public-ap-southeast-2a" {
    vpc_id                  = aws_vpc.VPC-E-Australia-Test.id
    cidr_block              = "10.24.1.0/24"
    availability_zone       = "ap-southeast-2a"
    map_public_ip_on_launch = true
    provider = aws.australia

    tags = {
    Name    = "public-ap-southeast-2a"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
    }
}




resource "aws_subnet" "public-ap-southeast-2b" {
  vpc_id                  = aws_vpc.VPC-E-Australia-Test.id
  cidr_block              = "10.24.2.0/24"
  availability_zone       = "ap-southeast-2b"
  map_public_ip_on_launch = true
  provider = aws.australia

  tags = {
    Name    = "public-ap-southeast-2b"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

# Australia Private IP space.

resource "aws_subnet" "private-ap-southeast-2a" {
  vpc_id                  = aws_vpc.VPC-E-Australia-Test.id
  cidr_block              = "10.24.11.0/24"
  availability_zone       = "ap-southeast-2a"
  provider = aws.australia
  
  tags = {
    Name    = "private-ap-southeast-2a"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

resource "aws_subnet" "private-ap-southeast-2b" {
  vpc_id                  = aws_vpc.VPC-E-Australia-Test.id
  cidr_block              = "10.24.12.0/24"
  availability_zone       = "ap-southeast-2b"
  provider = aws.australia

  tags = {
    Name    = "private-ap-southeast-2b"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}


#------------------------------------------------------#
# Hong Kong
#  Hong Kong VPC Public IP space.
resource "aws_subnet" "public-ap-east-1a" {
    vpc_id                  = aws_vpc.VPC-F-HongKong-Test.id
    cidr_block              = "10.25.1.0/24"
    availability_zone       = "ap-east-1a"
    map_public_ip_on_launch = true
    provider = aws.hongkong

    tags = {
    Name    = "public-ap-east-1a"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
    }
}




resource "aws_subnet" "public-ap-east-1b" {
  vpc_id                  = aws_vpc.VPC-F-HongKong-Test.id
  cidr_block              = "10.25.2.0/24"
  availability_zone       = "ap-east-1b"
  map_public_ip_on_launch = true
  provider = aws.hongkong

  tags = {
    Name    = "public-ap-east-1b"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

# Hong Kong Private IP space.

resource "aws_subnet" "private-ap-east-1a" {
  vpc_id                  = aws_vpc.VPC-F-HongKong-Test.id
  cidr_block              = "10.25.11.0/24"
  availability_zone       = "ap-east-1a"
  provider = aws.hongkong
  
  tags = {
    Name    = "private-ap-east-1a"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

resource "aws_subnet" "private-ap-east-1b" {
  vpc_id                  = aws_vpc.VPC-F-HongKong-Test.id
  cidr_block              = "10.25.12.0/24"
  availability_zone       = "ap-east-1b"
  provider = aws.hongkong

  tags = {
    Name    = "private-ap-east-1b"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}
#------------------------------------------------------#


# California Public IP Space.

resource "aws_subnet" "public-us-west-1a" {
  vpc_id                  = aws_vpc.VPC-G-California-Test.id
  cidr_block              = "10.26.1.0/24"
  availability_zone       = "us-west-1a"
  map_public_ip_on_launch = true
  provider = aws.california

  tags = {
    Name    = "public-us-west-1a"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

resource "aws_subnet" "public-us-west-1b" {
  vpc_id                  = aws_vpc.VPC-G-California-Test.id
  cidr_block              = "10.26.2.0/24"
  availability_zone       = "us-west-1b"
  map_public_ip_on_launch = true
  provider = aws.california

  tags = {
    Name    = "public-us-west-1b"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

# California Private IP space.

resource "aws_subnet" "private-us-west-1a" {
  vpc_id                  = aws_vpc.VPC-G-California-Test.id
  cidr_block              = "10.26.11.0/24"
  availability_zone       = "us-west-1b"
  provider = aws.california


  tags = {
    Name    = "private-us-west-1a"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

resource "aws_subnet" "private-us-west-1b" {
  vpc_id                  = aws_vpc.VPC-G-California-Test.id
  cidr_block              = "10.26.12.0/24"
  availability_zone       = "us-west-1b"
  provider = aws.california


  tags = {
    Name    = "private-us-west-1b"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}