# resource "aws_instance" "pub1_ec2" {
#   ami                         = "ami-0cff7528ff583bf9a" # us-east-1
#   instance_type               = "t2.micro"
#   associate_public_ip_address = true
#   subnet_id                   = aws_subnet.pub_sub_01.id
#   key_name                    = "aws_7am_may2022"
#   vpc_security_group_ids      = [aws_security_group.all_sg.id]
#   user_data                   = file("./files/apache1.sh")
#   count                       = 1
#   tags = {
#     Name = "public-server-${count.index + 1}-${local.ws}"
#   }
# }

# // security group for ec2 instance

# resource "aws_security_group" "all_sg" {
#   name        = "all_sg-tf"
#   description = "all_sg-tf"
#   vpc_id      = aws_vpc.main.id

#   ingress {
#     description = "http"
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   ingress {
#     description = "ssh"
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }


#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "all_sg_tf"
#   }
# }