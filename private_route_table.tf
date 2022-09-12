# Creating Route Table for private Subnet
resource "aws_route_table" "private_rt" {
    vpc_id = aws_vpc.demovpc.id

tags = {
        Name = "private Subnet Route Table"
    }
}

resource "aws_route_table_association" "rt_associate_private" {
    count = length(var.private_subnet)
    subnet_id = element(aws_subnet.private_sub.*.id, count.index)
    route_table_id = aws_route_table.private_rt.id
}
