output "vip_port_id" {
    description = "ID of the vip port created by the loadbalancer"
    value       = "${openstack_lb_loadbalancer_v2.loadbalancer.vip_port_id}"
}
