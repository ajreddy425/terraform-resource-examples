
// write terraform code for VPC (FAQ 5/5)
resource "aws_vpc" "main" { // resource "type_of_resource" "logical_name"
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name       = "terraform-vpc-${terraform.workspace}"
    Batch      = "8am-batch"
    account_id = data.aws_caller_identity.current.account_id
  }
}

// do not change the resource_type
// logical name can be anything, but it is important. give some meaningful names
// ctrl+? 


