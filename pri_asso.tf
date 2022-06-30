
# // private subnet association to the private route table

# resource "aws_route_table_association" "pri_asso" {
#   subnet_id      = aws_subnet.pri_sub_01.id
#   route_table_id = aws_route_table.pri_rt.id
# }