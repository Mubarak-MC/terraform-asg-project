resource "aws_autoscaling_group" "asg" {

  desired_capacity = 2
  min_size         = 2
  max_size         = 5

  vpc_zone_identifier = var.public_subnets
  target_group_arns   = [var.target_group_arn]
  health_check_type   = "ELB"
  health_check_grace_period = 300

  launch_template {
    id      = var.launch_template_id
    version = "$Latest"
  }
}

resource "aws_autoscaling_policy" "cpu_policy" {

  name                   = "cpu-policy"
  autoscaling_group_name = aws_autoscaling_group.asg.name
  policy_type            = "TargetTrackingScaling"

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }

    target_value = 70
  }
}