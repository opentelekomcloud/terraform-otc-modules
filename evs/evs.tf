resource "openstack_blockstorage_volume_v2" "volume" {
  count = "${var.evs_count}"
  name  = "${var.name}${format("%02d", count.index+1)}"
  size  = "${var.size_in_gb}"
}

resource "openstack_compute_volume_attach_v2" "volume_attach" {
  count       = "${var.evs_count}"
  instance_id = "${element(var.ecs_ids, count.index)}"
  volume_id   = "${element(openstack_blockstorage_volume_v2.volume.*.id, count.index)}"
}
