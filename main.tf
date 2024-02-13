module "ec2" {
  source        = "./ec2"
  for_each      = var.instances
  component     = each.value["name"]
  instance_type = each.value["type"]
  public_ip = module.ec2[each.value["frontend"]].public_ip
}