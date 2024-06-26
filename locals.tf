locals {
  subnet_ids = {
    db = tolist([module.vpc["main"].private_subnets["db-az1"].id, module.vpc["main"].private_subnets["db-az2"].id])
    app = tolist([module.vpc["main"].private_subnets["app-az1"].id, module.vpc["main"].private_subnets["app-az2"].id])
    web = tolist([module.vpc["main"].private_subnets["web-az1"].id, module.vpc["main"].private_subnets["web-az2"].id])
    public = tolist([module.vpc["main"].public_subnets["public-az1"].id, module.vpc["main"].public_subnets["public-az2"].id])
  }
  subnet_cidr = {
    db = tolist([module.vpc["main"].private_subnets["db-az1"].cidr_block, module.vpc["main"].private_subnets["db-az2"].cidr_block])
    app = tolist([module.vpc["main"].private_subnets["app-az1"].cidr_block, module.vpc["main"].private_subnets["app-az2"].cidr_block])
    web = tolist([module.vpc["main"].private_subnets["web-az1"].cidr_block, module.vpc["main"].private_subnets["web-az2"].cidr_block])
    public = tolist([module.vpc["main"].public_subnets["public-az1"].cidr_block, module.vpc["main"].public_subnets["public-az2"].cidr_block])
  }
  db_subnets_ids = tolist([module.vpc["main"].private_subnets["db-az1"].id, module.vpc["main"].private_subnets["db-az2"].id])
  app_subnets_ids = tolist([module.vpc["main"].private_subnets["app-az1"].id, module.vpc["main"].private_subnets["app-az2"].id])
  web_subnets_ids = tolist([module.vpc["main"].private_subnets["web-az1"].id, module.vpc["main"].private_subnets["web-az2"].id])
}