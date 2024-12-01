# 
# Tokyo Region Auto Scaling Group

resource "aws_autoscaling_group" "ASG01_TYO" {
  name_prefix           = "ASG01-TYO-auto-scaling-group"
  min_size              = 6
  max_size              = 15
  desired_capacity      = 9
  vpc_zone_identifier   = [
    aws_subnet.private-ap-northeast-1a.id,
    aws_subnet.private-ap-northeast-1c.id
    
  ]

  provider = aws.tokyo

  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.ASG01_TYO_TG01.arn]

  launch_template {
    id      = aws_launch_template.app1_Tokyo_LT.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "app1-TYO-instance"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "app1_TYO_scaling_policy" {
  name                   = "app1-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.ASG01_TYO.name
  provider = aws.tokyo

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "ASG01_TYO_attachment" {
  autoscaling_group_name = aws_autoscaling_group.ASG01_TYO.name
  alb_target_group_arn   = aws_lb_target_group.ASG01_TYO_TG01.arn
  provider = aws.tokyo
}

#---------------------------------------------------------------------#
# New York Region Auto Scaling Group

resource "aws_autoscaling_group" "ASG01_NY" {
  name_prefix           = "ASG01-NY-auto-scaling-group"
  min_size              = 6
  max_size              = 15
  desired_capacity      = 9
  vpc_zone_identifier   = [
    aws_subnet.private-us-east-1a.id,
    aws_subnet.private-us-east-1b.id
    
  ]

  provider = aws.newyork

  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.ASG01_NY_TG01.arn]

  launch_template {
    id      = aws_launch_template.appl1_NY_LT.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "app1-NY-instance"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "app1_NY_scaling_policy" {
  name                   = "app1-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.ASG01_NY.name
  provider = aws.newyork

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "ASG01_NY_attachment" {
  autoscaling_group_name = aws_autoscaling_group.ASG01_NY.name
  alb_target_group_arn   = aws_lb_target_group.ASG01_NY_TG01.arn
  provider = aws.newyork
}

