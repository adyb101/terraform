resource "aws_vpc" "minajeong_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "minajeong-vpc"
  }
}