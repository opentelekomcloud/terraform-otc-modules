output "ids" {
    value = ["${openstack_blockstorage_volume_v2.volume.*.id}"]
}
