
output "my_reg_name" {
  value = local.y

}


output "list_of_azs" {
  value = local.x

}

output "no_of_azs" {
  value = length(local.x)

}

output "account_id" {
  value = local.acc_id // expression
}



output "vpc_id" {
  value = aws_vpc.main.id

}

# output "subnet1_id" {
#   value = aws_subnet.pub_sub_01.id

# }

# output "subnet2_id" {
#   value = aws_subnet.pri_sub_01.id

# }