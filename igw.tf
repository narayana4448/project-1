# Creating Internet Gateway 
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.demovpc.id

  tags = {
    Name = "demo_igw"
  }
}
