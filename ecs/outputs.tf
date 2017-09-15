output "addresses" {
    description = "list of ipv4 addresses of the created servers"
    value       = ["${openstack_compute_instance_v2.instance.*.access_ip_v4}"]
}

output "ids" {
    description = "list of IDs of the created servers"
    value       = ["${openstack_compute_instance_v2.instance.*.id}"]
}

output "count" {
    description = "number of servers created"
    value       = "${var.ecs_count}"
}
