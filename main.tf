module "vpc" {
  source = "git::https://github.com/iliyastb/tf-module-vpc.git"
  env = var.env
  tags = var.tags

  for_each = var.vpc
  vpc_cidr = each.value["vpc_cidr"]
  public_subnets = each.value["public_subnets"]
  private_subnets = each.value["private_subnets"]
}


#"github.com/hashicorp/example"
#"git@github.com:hashicorp/example.git"
#"git::https://example.com/vpc.git"
#"git::ssh://username@example.com/storage.git"