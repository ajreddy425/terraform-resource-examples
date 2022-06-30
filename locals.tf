locals {
  x      = data.aws_availability_zones.available.names
  acc_id = data.aws_caller_identity.current.account_id
  y      = data.aws_region.current.name
  ws     = terraform.workspace
  l      = length(data.aws_availability_zones.available.names)
}