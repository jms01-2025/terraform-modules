output "subnet_ids" {
  value  = {for cidr, subnet in aws_subnet.tf_sn : cidr => subnet.id}
}