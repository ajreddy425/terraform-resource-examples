# // stickiness

# resource "aws_lb_cookie_stickiness_policy" "sticky" {
#   name                     = "sticky-policy"
#   load_balancer            = aws_elb.my_elb.id
#   lb_port                  = 80
#   cookie_expiration_period = 30
# }