resource "openstack_networking_network_v2" "network" {
  name           = "${var.name}-network"
  admin_state_up = "true"
}

resource "openstack_networking_subnet_v2" "subnet" {
  name            = "${var.name}-subnet"
  network_id      = "${openstack_networking_network_v2.network.id}"
  cidr            = "${var.subnet}"
  ip_version      = 4
  dns_nameservers = ["${var.nameserver}"]
}

resource "openstack_networking_router_v2" "router" {
  name             = "${var.name}-router"
  admin_state_up   = "true"
  external_gateway = "${data.openstack_networking_network_v2.extnet.id}"
}

resource "openstack_networking_router_interface_v2" "interface" {
  router_id = "${openstack_networking_router_v2.router.id}"
  subnet_id = "${openstack_networking_subnet_v2.subnet.id}"
}

data "openstack_networking_network_v2" "extnet" {
  name = "${var.ext_net_name}"
}
