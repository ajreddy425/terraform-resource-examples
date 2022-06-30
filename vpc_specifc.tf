# resource "aws_vpc" "specific" { // resource "type_of_resource" "logical_name"
#   cidr_block       = "10.0.0.0/16"
#   instance_tenancy = "default"

#   tags = {
#     Name       = "terraform-specific-vpc-${terraform.workspace}"
#     Batch      = "8am-batch"
#     account_id = data.aws_caller_identity.current.account_id
#   }
# }


