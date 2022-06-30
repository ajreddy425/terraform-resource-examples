
# // nat gateway creation

# resource "aws_nat_gateway" "my_ngw" {
#   allocation_id = aws_eip.eip.id
#   subnet_id     = aws_subnet.pub_sub_01.id

#   tags = {
#     Name = "gw NAT"
#   }

# }


# // create the elastic ip

# resource "aws_eip" "eip" {
#   vpc = true
# }