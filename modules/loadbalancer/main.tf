resource "oci_load_balancer_load_balancer" "main" {
  compartment_id = var.compartment_ocid
  display_name   = "${var.name_prefix}-lb"
  shape          = var.lb_shape
  subnet_ids     = [var.public_subnet_id]
  is_private     = false

  # Flexible shape requires explicit bandwidth bounds.
  # 10 Mbps minimum is the Always Free tier.
  shape_details {
    minimum_bandwidth_in_mbps = 10
    maximum_bandwidth_in_mbps = 10
  }
}

resource "oci_load_balancer_backend_set" "main" {
  load_balancer_id = oci_load_balancer_load_balancer.main.id
  name             = "${var.name_prefix}-backendset"
  policy           = "ROUND_ROBIN"

  health_checker {
    protocol          = "HTTP"
    port              = 80
    url_path          = "/"
    return_code       = 200
    interval_ms       = 10000
    timeout_in_millis = 3000
    retries           = 3
  }
}

resource "oci_load_balancer_backend" "app" {
  count = length(var.backend_ips)

  load_balancer_id = oci_load_balancer_load_balancer.main.id
  backendset_name  = oci_load_balancer_backend_set.main.name
  ip_address       = var.backend_ips[count.index]
  port             = 80
  weight           = 1
}

resource "oci_load_balancer_listener" "http" {
  load_balancer_id         = oci_load_balancer_load_balancer.main.id
  name                     = "${var.name_prefix}-http-listener"
  default_backend_set_name = oci_load_balancer_backend_set.main.name
  port                     = 80
  protocol                 = "HTTP"
}