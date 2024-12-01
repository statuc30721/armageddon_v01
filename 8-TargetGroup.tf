# All AWS regions are in this file.

resource "aws_lb_target_group" "ASG01_TYO_TG01" {
  name     = "ASG01-Tokyo-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.VPC-A-Tokyo-Test.id
  target_type = "instance"
  provider = aws.tokyo

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "ASG01-Tokyo-TG01"
    Service = "ASG"
    Owner   = "Frodo"
    Project = "Web Service"
  }
}

#----------------------------------------------#
# New York Region
resource "aws_lb_target_group" "ASG01_NY_TG01" {
  name     = "ASG01-NewYork-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.VPC-B-NewYork-Test.id
  target_type = "instance"
  provider = aws.newyork

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "ASG01-NY-TG01"
    Service = "ASG"
    Owner   = "Frodo"
    Project = "Web Service"
  }
}
#----------------------------------------------#
# London Regiun

resource "aws_lb_target_group" "ASG01_LON_TG01" {
  name     = "ASG01-London-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.VPC-C-London-Test.id
  target_type = "instance"
  provider = aws.london

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "ASG01-LON-TG01"
    Service = "ASG"
    Owner   = "Frodo"
    Project = "Web Service"
  }
}
#----------------------------------------------#
# Sao Paulo Region
resource "aws_lb_target_group" "ASG01_SAO_TG01" {
  name     = "ASG01-SaoPAulo-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.VPC-D-SaoPaolo-Test.id
  target_type = "instance"
  provider = aws.saopaulo

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "ASG01-SAO-TG01"
    Service = "ASG"
    Owner   = "Frodo"
    Project = "Web Service"
  }
}
#----------------------------------------------#
# Australia Region
resource "aws_lb_target_group" "ASG01_AUS_TG01" {
  name     = "ASG01-Australia-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.VPC-E-Australia-Test.id
  target_type = "instance"
  provider = aws.australia

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "ASG01-AUS-TG01"
    Service = "ASG"
    Owner   = "Frodo"
    Project = "Web Service"
  }
}
#----------------------------------------------#
# Hong Kong Region
resource "aws_lb_target_group" "ASG01_HK_TG01" {
  name     = "ASG01-HongKong-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.VPC-F-HongKong-Test.id
  target_type = "instance"
  provider = aws.hongkong

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "ASG01-HK-TG01"
    Service = "ASG"
    Owner   = "Frodo"
    Project = "Web Service"
  }
}
#----------------------------------------------#
# California Region
resource "aws_lb_target_group" "ASG01_CALI_TG01" {
  name     = "ASG01-California-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.VPC-G-California-Test.id
  target_type = "instance"
  provider = aws.california

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "ASG01-CALI-TG01"
    Service = "ASG"
    Owner   = "Frodo"
    Project = "Web Service"
  }
}