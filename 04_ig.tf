resource "aws_internet_gateway" "minajeong_ig" {
  vpc_id = aws_vpc.minajeong_vpc.id

  tags = {
    "Name" = "minajeong-ig"
  }
}