module "vpc" {
  source = "github.com/iliyastb/tf-module-vpc"
  env = var.env

  for_each = var.vpc
  cidr = each.value["cidr"]
}


#"github.com/hashicorp/example"
#"git@github.com:hashicorp/example.git"
#"git::https://example.com/vpc.git"
#"git::ssh://username@example.com/storage.git"