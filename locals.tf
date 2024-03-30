locals {
  # private subnets
  subnet_ids = {
    db = tolist([module.vpc["main"].private_subnets["db-az1"].id, module.vpc["main"].private_subnets["db-az2"].id])
    app = tolist([module.vpc["main"].private_subnets["app-az1"].id, module.vpc["main"].private_subnets["app-az2"].id])
    web = tolist([module.vpc["main"].private_subnets["web-az1"].id, module.vpc["main"].private_subnets["web-az2"].id])
  }
  db_subnets_ids = tolist([module.vpc["main"].private_subnets["db-az1"].id, module.vpc["main"].private_subnets["db-az2"].id])
  app_subnets_ids = tolist([module.vpc["main"].private_subnets["app-az1"].id, module.vpc["main"].private_subnets["app-az2"].id])
  web_subnets_ids = tolist([module.vpc["main"].private_subnets["web-az1"].id, module.vpc["main"].private_subnets["web-az2"].id])
}