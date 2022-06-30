variable "vpc_cidr" {
  description = "enter CIDR block of VPC"
  default     = "192.168.0.0/16"
  type        = string

}

// variable "variable_logical_name"
// everything inside the variable block is optional

# variable "vpc_name" {
#   description = "enter the name of the VPC"
#   default     = "terraform-vpc-8am"
# }