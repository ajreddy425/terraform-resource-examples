// terraform taint command example

resource "aws_vpc" "taint" {
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "default"
  tags = {
    Name = "terraform-taint-vpc"
  }

}