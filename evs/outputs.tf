output "ids" {
    description = "list of IDs of the created volumes"
    value       = ["${openstack_blockstorage_volume_v2.volume.*.id}"]
}
