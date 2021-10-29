# Application LoadBalancer Deploy
resource "aws_lb" "minajeong_lb" {
  name                   = "minajeong-alb"
  internal               = false
  load_balancer_type     = "application"
  security_groups        = [aws_security_group.minajeogn_websg.id]
  subnets                = [aws_subnet.minajeong_puba.id,aws_subnet.minajeong_pubc.id]


  tags = {
      "Name" = "minajeong-alb"
  }
}