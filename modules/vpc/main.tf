## VPC
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr

  tags = {
    Name = "Jenkins - VPC"
  }
}

## PUBLIC Subnets
resource "aws_subnet" "public_subnets" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidrs
  availability_zone = data.aws_availability_zones.available.names[0]


  tags = {
    Name = "PUB Sub"
  }
}