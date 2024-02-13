module "ec2" {
  source        = "./ec2"
  for_each      = var.instances
  component     = each.value["name"]
  instance_type = each.value["type"]
  sg_id         = module.sg.sg_id
}

module "sg" {
  source = "./sg"
}

module "r53" {
  source     = "./r53"
  for_each   = var.instances
  private_ip = module.ec2[each.value["name"]].private_ip
  component  = each.value["name"]
  host       = module.ec2[each.value["name"]].public_ip
}

module "r53p" {
  source    = "./r53p"
  public_ip = module.ec2["frontend"].public_ip
}