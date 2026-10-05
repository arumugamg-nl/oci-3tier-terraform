output "vcn_id" {
  value = module.network.vcn_id
}

output "public_subnet_id" {
  value = module.network.public_subnet_id
}

output "private_subnet_id" {
  value = module.network.private_subnet_id
}

output "bastion_public_ip" {
  value = module.compute.bastion_public_ip
}

output "app_private_ips" {
  value = module.compute.app_private_ips
}

output "lb_public_ip" {
  value = module.loadbalancer.lb_public_ip
}