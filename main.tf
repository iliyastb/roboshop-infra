module "vpc" {
  source = "git::https://github.com/iliyastb/tf-module-vpc.git"
  env = var.env
  tags = var.tags

  default_vpc_id = var.default_vpc_id
  default_rt = var.default_rt

  for_each = var.vpc
  vpc_cidr = each.value["vpc_cidr"]
  public_subnets = each.value["public_subnets"]
  private_subnets = each.value["private_subnets"]
}

module "vpc" {
  source = "git::https://github.com/iliyastb/tf-module-docdb.git"
  env = var.env
  tags = var.tags

  for_each = var.docdb
  engine = each.value["engine"]
  engine_version = each.value["engine_version"]
}
