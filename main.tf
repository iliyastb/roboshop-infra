module "ec2" {
  source = "./ec2"
  for_each = var.instances
  component = each.value["name"]
  instance_type = each.value["type"]
  sg_id = module.sg.sg_id
}

module "sg" {
  source = "./sg"
}