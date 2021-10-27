resource "aws_internet_gateway" "name" {
  vpc_id = aws_vpc.minajeong_vpc.id

  tags = {
    "Name" = "minajeong-ig"
  }
}