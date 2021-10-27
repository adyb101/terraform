resource "aws_route_table_association" "minajeong_rtas_a" {
  subnet_id = aws_subnet.minajeong_puba.id
  route_table_id = aws_route_table.minajeong_rt.id
}

resource "aws_route_table_association" "minajeong_rtas_c" {
  subnet_id = aws_subnet.minajeong_pubc.id
  route_table_id = aws_route_table.minajeong_rt.id
}