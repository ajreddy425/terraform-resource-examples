# resource "aws_instance" "pub2_ec2" {
#   ami                         = "ami-0cff7528ff583bf9a" # us-east-1
#   instance_type               = "t2.micro"
#   associate_public_ip_address = true
#   subnet_id                   = aws_subnet.pub_sub_02.id
#   key_name                    = "aws_7am_may2022"
#   vpc_security_group_ids      = [aws_security_group.all_sg.id]
#   user_data                   = file("./files/apache2.sh")
#   tags = {
#     Name = "web-server-02"
#   }
# }