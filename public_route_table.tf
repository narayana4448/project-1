# Creating Route Table for Public Subnet
resource "aws_route_table" "public_rt" {
    vpc_id = aws_vpc.demovpc.id
route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
tags = {
        Name = "Public Subnet Route Table"
    }
}

resource "aws_route_table_association" "rt_associate_public" {
    count = length(var.public_subnet)
    subnet_id = element(aws_subnet.public_sub.*.id, count.index)
    route_table_id = aws_route_table.public_rt.id
}
