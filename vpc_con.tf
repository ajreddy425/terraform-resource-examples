resource "aws_vpc" "con_vpc" {
  instance_tenancy = "default"
  cidr_block       = "172.16.0.0/16"
  count            = terraform.workspace == "stage" ? 1 : 0 // true_value : false_value  1 : 0
  tags = {
    Name     = "vpc-con-terraform"
    Location = "Bangalore"
  }

}