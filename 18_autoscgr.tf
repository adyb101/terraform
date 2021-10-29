resource "aws_placement_group" "minajeong_pg" {
  name      = "minajeong-pg"
  strategy  = "cluster"
}

resource "aws_autoscaling_group" "minajeong_atsg" {
  name = "minajeong-atsg"
  min_size                       = 2
  max_size                       = 8
  health_check_grace_period      = 300
  health_check_type              = "ELB"
  desired_capacity               = 2
  force_delete                   = true
  launch_configuration           = aws_launch_configuration.minajeong_lacf.name
  vpc_zone_identifier            = [aws_subnet.minajeong_puba.id,aws_subnet.minajeong_pubc.id]

}