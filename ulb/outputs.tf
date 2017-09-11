output "vip_port_id" {
    value = "${openstack_lb_loadbalancer_v2.loadbalancer.vip_port_id}"
}
