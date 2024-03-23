locals {
  db_subnets_ids = tolist([module.vpc["main"].private_subnets["db-az1"].id, module.vpc["main"].private_subnets["db-az1"].id])
}
