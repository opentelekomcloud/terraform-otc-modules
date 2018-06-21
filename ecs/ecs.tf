resource "openstack_compute_instance_v2" "instance" {
  count       = "${var.ecs_count}"
  name        = "${var.name}${format("%02d", count.index+1)}"
  image_name  = "${var.image}"
  flavor_name = "${var.flavor}"
  key_pair    = "${openstack_compute_keypair_v2.keypair.name}"
  user_data   = "${var.user_data}"
  network {
    uuid = "${var.network_id}"
  }
}

resource "openstack_compute_floatingip_associate_v2" "instance_fip" {
  count                 = "${var.attach_eip == "true" ? var.ecs_count : 0}"
  floating_ip           = "${openstack_networking_floatingip_v2.fip.*.address[count.index]}"
  instance_id           = "${openstack_compute_instance_v2.instance.*.id[count.index]}"
  wait_until_associated = "true"
}

resource "openstack_networking_floatingip_v2" "fip" {
  count    = "${var.attach_eip == "true" ? var.ecs_count : 0}"
  pool     = "${var.ext_net_name}"
}

resource "openstack_compute_keypair_v2" "keypair" {
  name       = "${var.name}-key"
  public_key = "${var.pubkey}"
}

