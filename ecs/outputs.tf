output "addresses" {
    value = ["${openstack_compute_instance_v2.instance.*.access_ip_v4}"]
}

output "ids" {
    value = ["${openstack_compute_instance_v2.instance.*.id}"]
}

output "count" {
    value = "${var.ecs_count}"
}
