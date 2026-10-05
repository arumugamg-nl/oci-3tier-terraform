output "lb_public_ip" {
  description = "Public IP of the load balancer"
  value       = oci_load_balancer_load_balancer.main.ip_address_details[0].ip_address
}