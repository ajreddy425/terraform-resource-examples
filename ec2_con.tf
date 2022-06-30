# resource "aws_instance" "web_server01-con" {
#   ami                         = "ami-0f9fc25dd2506cf6d"
#   instance_type               = "t2.micro"
#   subnet_id                   = aws_subnet.pub_sub_01.id
#   associate_public_ip_address = true
#   vpc_security_group_ids      = [aws_security_group.all_sg.id]
#   key_name                    = "aws_8am_batch"
#   user_data                   = file("./files/apache1.sh")
#   count                       = var.IsTotest == false ? 1 : 0

#   tags = {
#     Name     = "ec2-con-Instance-01-demo-${count.index + 1}-${local.ws}"
#     Location = "Bangalore"
#   }
# }

# variable "IsTotest" {
#   default = true
# }
