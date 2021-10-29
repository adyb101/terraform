resource "aws_autoscaling_attachment" "minajeong_atatt" {
  autoscaling_group_name = aws_autoscaling_group.minajeong_atsg.id
  alb_target_group_arn = aws_lb_target_group.minajeong_lbt.arn
}