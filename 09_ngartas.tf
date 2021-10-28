resource "aws_route_table_association" "minajeong_ngartas_a" {
    subnet_id = aws_subnet.minajeong_pria.id
    route_table_id = aws_route_table.minajeong_ngart_a.id    
}

resource "aws_route_table_association" "minajeong_ngartas_c" {
    subnet_id = aws_subnet.minajeong_pric.id
    route_table_id = aws_route_table.minajeong_ngart_c.id    
}