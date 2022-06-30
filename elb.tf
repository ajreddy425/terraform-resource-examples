# // classic load balancer

# # Create a new load balancer
# resource "aws_elb" "my_elb" {
#   name            = "my-elb-terraform"
#   security_groups = [aws_security_group.all_sg.id]
#   subnets         = [aws_subnet.pub_sub_01.id, aws_subnet.pri_sub_01.id]

#   // any one of az or subnets needs to given.

#   listener {
#     instance_port     = 80
#     instance_protocol = "http"
#     lb_port           = 80
#     lb_protocol       = "http"
#   }


#   health_check {
#     healthy_threshold   = 2
#     unhealthy_threshold = 2
#     timeout             = 3
#     target              = "HTTP:80/"
#     interval            = 30
#   }

#   instances                   = [aws_instance.pub1_ec2.id, aws_instance.pri1_ec2.id]
#   cross_zone_load_balancing   = true
#   idle_timeout                = 400
#   connection_draining         = true
#   connection_draining_timeout = 400

#   tags = {
#     Name = "my-terraform-elb"
#   }
# }

