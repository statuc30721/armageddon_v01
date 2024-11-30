# All regions are in this file.

# Tokyo Region
resource "aws_lb" "ASG01-TYO-LB01" {
  name               = "ASG01-TYO-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.ASG01-SG01-TYO-LB01.id]
  subnets            = [
    aws_subnet.public-ap-northeast-1a.id,
    aws_subnet.public-ap-northeast-1c.id
  ]

  provider = aws.tokyo

  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "ASG01-TYO-LB01"
    Service = "App1"
    Owner   = "Frodo"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http_TYO" {
  load_balancer_arn = aws_lb.ASG01-TYO-LB01.arn
  port              = 80
  protocol          = "HTTP"
  provider = aws.tokyo

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ASG01_TYO_TG01.arn
  }
}

#--------------------------------------------------------------#
# New York Region

resource "aws_lb" "ASG01-NY-LB01" {
  name               = "ASG01-NewYork-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.ASG01-SG01-NY-LB01.id]
  subnets            = [
    aws_subnet.public-us-east-1a.id,
    aws_subnet.public-us-east-1b.id
  ]

  provider = aws.newyork

  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "ASG01-NY-LB01"
    Service = "App1"
    Owner   = "Frodo"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http_NY" {
  load_balancer_arn = aws_lb.ASG01-NY-LB01.arn
  port              = 80
  protocol          = "HTTP"

  provider = aws.newyork

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ASG01_NY_TG01.arn
  }
}