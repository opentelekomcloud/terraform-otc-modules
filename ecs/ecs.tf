resource "openstack_compute_instance_v2" "instance" {
  count       = "${var.ecs_count}"
  name        = "${var.name}${format("%02d", count.index+1)}"
  image_name  = "${var.image}"
  flavor_name = "${var.flavor}"
  key_pair    = "${openstack_compute_keypair_v2.keypair.name}"
  user_data   = "${var.user_data}"
  network {
    port = "${element(openstack_networking_port_v2.network_port.*.id, count.index)}"
    access_network = true
  }
}

resource "openstack_networking_port_v2" "network_port" {
  count              = "${var.ecs_count}"
  network_id         = "${var.network_id}"
  security_group_ids = ["${var.security_groups}"]
  admin_state_up     = "true"
  fixed_ip           = {
    subnet_id        = "${var.subnet_id}"
  }
}

resource "openstack_networking_floatingip_v2" "fip" {
  count    = "${var.attach_eip == "true" ? var.ecs_count : 0}"
  pool     = "${var.ext_net_name}"
  port_id  = "${element(openstack_networking_port_v2.network_port.*.id, count.index)}"
  depends_on = ["openstack_compute_instance_v2.instance"]
}

resource "openstack_compute_keypair_v2" "keypair" {
  name       = "${var.name}-key"
  public_key = "${var.pubkey}"
}

