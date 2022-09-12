# Creating Private subnet 

resource "aws_subnet" "private_sub" {
  vpc_id                  = aws_vpc.demovpc.id
  count = 2
  cidr_block             = element(var.private_subnet, count.index)
  availability_zone = "ap-southeast-1a"
tags = {
    Name = element(var.private_subnet_tags,count.index)
  }
}

# Creating public subnet 

resource "aws_subnet" "public_sub" {
  vpc_id                  = aws_vpc.demovpc.id
  count = 2
  cidr_block             = element(var.public_subnet, count.index)
  availability_zone = "ap-southeast-1a"
tags = {
    Name = element(var.public_subnet_tags,count.index)
  }
}