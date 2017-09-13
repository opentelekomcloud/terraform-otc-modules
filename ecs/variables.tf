variable "name" {}

variable "image" {}

variable "flavor" {}

variable "pubkey" {}

variable "network_id" {}

variable "subnet_id" {}

variable "user_data" {
    default = ""
}

variable "attach_eip" {
    default = ""
}

variable "security_groups" {
    default = []
}

variable "ecs_count" {
    default = "1"
}

variable "ext_net_name" {
    default = "admin_external_net"
}
