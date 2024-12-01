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

#---------------------------------------------------------------#
# London Region


resource "aws_lb" "ASG01-LON-LB01" {
  name               = "ASG01-London-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.ASG01-SG01-LONDON-LB01.id]
  subnets            = [
    aws_subnet.public-eu-west-2a.id,
    aws_subnet.public-eu-west-2b.id
  ]

  provider = aws.london

  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "ASG01-LON-LB01"
    Service = "App1"
    Owner   = "Frodo"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http_LON" {
  load_balancer_arn = aws_lb.ASG01-LON-LB01.arn
  port              = 80
  protocol          = "HTTP"

  provider = aws.london

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ASG01_LON_TG01.arn
  }
}

#---------------------------------------------------------------#
# Sao Paulo Region


resource "aws_lb" "ASG01-SAO-LB01" {
  name               = "ASG01-SaoPaulo-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.ASG01-SG01-SAO-LB01.id]
  subnets            = [
    aws_subnet.public-sa-east-1a.id,
    aws_subnet.public-sa-east-1b.id
  ]

  provider = aws.saopaulo

  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "ASG01-SAO-LB01"
    Service = "App1"
    Owner   = "Frodo"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http_SAO" {
  load_balancer_arn = aws_lb.ASG01-SAO-LB01.arn
  port              = 80
  protocol          = "HTTP"

  provider = aws.saopaulo

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ASG01_SAO_TG01.arn
  }
}

#---------------------------------------------------------------#
# Australia Region


resource "aws_lb" "ASG01-AUS-LB01" {
  name               = "ASG01-Australia-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.ASG01-SG01-AUS-LB01.id]
  subnets            = [
    aws_subnet.public-ap-southeast-2a.id,
    aws_subnet.public-ap-southeast-2b.id
  ]

  provider = aws.australia

  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "ASG01-AUS-LB01"
    Service = "App1"
    Owner   = "Frodo"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http_AUS" {
  load_balancer_arn = aws_lb.ASG01-AUS-LB01.arn
  port              = 80
  protocol          = "HTTP"

  provider = aws.australia

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ASG01_AUS_TG01.arn
  }
}

#---------------------------------------------------------------#
# Hing Kong Region


resource "aws_lb" "ASG01-HK-LB01" {
  name               = "ASG01-HongKong-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.ASG01-SG01-HongKong-LB01.id]
  subnets            = [
    aws_subnet.public-ap-east-1a.id,
    aws_subnet.public-ap-east-1b.id
  ]

  provider = aws.hongkong

  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "ASG01-HK-LB01"
    Service = "App1"
    Owner   = "Frodo"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http_HK" {
  load_balancer_arn = aws_lb.ASG01-HK-LB01.arn
  port              = 80
  protocol          = "HTTP"

  provider = aws.hongkong

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ASG01_HK_TG01.arn
  }
}

#---------------------------------------------------------------#
# California Region


resource "aws_lb" "ASG01-CALI-LB01" {
  name               = "ASG01-California-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.ASG01-SG01-CALI-LB01.id]
  subnets            = [
    aws_subnet.public-us-west-1a.id,
    aws_subnet.public-us-west-1b.id
  ]

  provider = aws.california

  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "ASG01-CALI-LB01"
    Service = "App1"
    Owner   = "Frodo"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "http_CALI" {
  load_balancer_arn = aws_lb.ASG01-CALI-LB01.arn
  port              = 80
  protocol          = "HTTP"

  provider = aws.california

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ASG01_CALI_TG01.arn
  }
}