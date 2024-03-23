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
  backup_retention_period = each.value["backup_retention_period"]
  preferred_backup_window = each.value["preferred_backup_window"]
  skip_final_snapshot = each.value["skip_final_snapshot"]
  subnet_ids = local.db_subnets_ids
}

#output "main" {
#  value = local.db_subnets_ids
#}