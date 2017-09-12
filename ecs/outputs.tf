output "addresses" {
    value = ["${openstack_compute_instance_v2.instance.*.access_ip_v4}"]
}

output "count" {
    value = "${var.count}"
}
