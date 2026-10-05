module "network" {
  source = "./modules/network"

  compartment_ocid    = var.compartment_ocid
  vcn_cidr            = var.vcn_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}

module "compute" {
  source = "./modules/compute"

  compartment_ocid  = var.compartment_ocid
  public_subnet_id  = module.network.public_subnet_id
  private_subnet_id = module.network.private_subnet_id
  ssh_public_key    = var.ssh_public_key
  app_node_count    = var.app_node_count
}