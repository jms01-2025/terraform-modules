resource "aws_subnet" "tf_sn" {
  for_each          = var.subnet_map
  vpc_id            = var.vpc_id
  cidr_block        = each.key
  availability_zone = each.value
  tags = {
    Name = "${var.pjt_name}_${each.key}_sn"
  }
}