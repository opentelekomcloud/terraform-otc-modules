output "network_id" {
    description = "the id of the created network"
    value       = "${openstack_networking_network_v2.network.id}"
}

output "router_id" {
    description = "the id of the created router"
    value       = "${openstack_networking_router_v2.router.id}"
}

output "interface_port" {
    description = "the port id of the created router interface"
    value       = "${openstack_networking_router_interface_v2.interface.port_id}"
}

output "subnet_id" {
    description = "the id of the created subnet"
    value       = "${openstack_networking_subnet_v2.subnet.id}"
}
