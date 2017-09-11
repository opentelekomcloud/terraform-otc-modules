variable "name" {}

variable "subnet" {}

variable "nameserver" {
    default = ["8.8.8.8", "8.8.4.4"]
}

variable "ext_net_name" {
    default = "admin_external_net"
}
