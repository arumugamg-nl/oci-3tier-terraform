module "network" {
  source = "./modules/network"

  compartment_ocid    = var.compartment_ocid
  vcn_cidr            = var.vcn_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}

moved {
  from = oci_core_vcn.main
  to   = module.network.oci_core_vcn.main
}

moved {
  from = oci_core_internet_gateway.igw
  to   = module.network.oci_core_internet_gateway.igw
}

moved {
  from = oci_core_nat_gateway.natgw
  to   = module.network.oci_core_nat_gateway.natgw
}

moved {
  from = oci_core_service_gateway.sgw
  to   = module.network.oci_core_service_gateway.sgw
}

moved {
  from = oci_core_route_table.public
  to   = module.network.oci_core_route_table.public
}

moved {
  from = oci_core_route_table.private
  to   = module.network.oci_core_route_table.private
}

moved {
  from = oci_core_security_list.public
  to   = module.network.oci_core_security_list.public
}

moved {
  from = oci_core_security_list.private
  to   = module.network.oci_core_security_list.private
}

moved {
  from = oci_core_subnet.public
  to   = module.network.oci_core_subnet.public
}

moved {
  from = oci_core_subnet.private
  to   = module.network.oci_core_subnet.private
}