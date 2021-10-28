resource "aws_route_table" "minajeong_ngart_a" {
    vpc_id = aws_vpc.minajeong_vpc.id
    route {
        cidr_block  = "0.0.0.0/0"
        gateway_id  = aws_nat_gateway.minajeong_nga_a.id
    }

    tags = {
      "Name" = "minajeong-nga-rta"
    }
}

resource "aws_route_table" "minajeong_ngart_c" {
    vpc_id = aws_vpc.minajeong_vpc.id
    route {
        cidr_block  = "0.0.0.0/0"
        gateway_id  = aws_nat_gateway.minajeong_nga_c.id
    }

    tags = {
      "Name" = "minajeong-nga-rtc"
    }
}