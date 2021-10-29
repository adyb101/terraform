resource "aws_lb_target_group_attachment" "minajeong_lbtg_att" {
  target_group_arn       = aws_lb_target_group.minajeong_lbt.arn
  target_id              = aws_instance.minajeong_weba.id
  port                   = 80
}