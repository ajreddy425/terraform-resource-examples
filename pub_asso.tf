# // public subnet association to the public route table

# resource "aws_route_table_association" "pub_asso1" {
#   subnet_id      = aws_subnet.pub_sub_01.id
#   route_table_id = aws_route_table.pub_rt.id
# }


# # resource "aws_route_table_association" "pub_asso2" {
# #   subnet_id      = aws_subnet.pub_sub_02.id
# #   route_table_id = aws_route_table.pub_rt.id
# # }