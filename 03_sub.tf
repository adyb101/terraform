#가용영역 a의 Public Subnet
resource "aws_subnet" "minajeong_puba" {
  vpc_id            = aws_vpc.minajeong_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "minajeong-puba"
  }
}

#가용영역 a의 Private Subnet
resource "aws_subnet" "minajeong_pria" {
  vpc_id            = aws_vpc.minajeong_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "minajeong-pria"
  }
}

#가용영역 c의 Public Subnet
resource "aws_subnet" "minajeong_pubc" {
  vpc_id            = aws_vpc.minajeong_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "minajeong-pubc"
  }
}

#가용영역 c의 Private Subnet
resource "aws_subnet" "minajeong_pric" {
  vpc_id            = aws_vpc.minajeong_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "minajeong-pric"
  }
}

#가용영역 a의 Private db Subnet
resource "aws_subnet" "minajeong_pridba" {
  vpc_id            = aws_vpc.minajeong_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "minajeong-pridba"
  }
}

#가용영역 c의 Private db Subnet
resource "aws_subnet" "minajeong_pridbc" {
  vpc_id            = aws_vpc.minajeong_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "minajeong-pridbc"
  }
}