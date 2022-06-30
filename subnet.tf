

resource "aws_subnet" "pub_sub_01" {
  cidr_block        = cidrsubnet(var.vpc_cidr, 8, count.index)
  vpc_id            = aws_vpc.main.id
  count             = local.l
  availability_zone = local.x[count.index]
  tags = {
    Name = "terraform-Pub-subnet-01-${local.ws}-${count.index + 1}"
  }
}


resource "aws_subnet" "pri_sub_01" {
  cidr_block        = cidrsubnet(var.vpc_cidr, 8, count.index + local.l)
  vpc_id            = aws_vpc.main.id
  count             = local.l
  availability_zone = local.x[count.index]
  tags = {
    Name = "terraform-Pub-subnet-01-${local.ws}-${count.index + 1}"
  }
}