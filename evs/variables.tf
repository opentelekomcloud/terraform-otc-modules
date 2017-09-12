variable "name" {}

variable "size_in_gb" {}

variable "ecs_ids" {
    type = "list"
}

variable "evs_count" {
    default = "1"
}
