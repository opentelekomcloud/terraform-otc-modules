variable "name" {
    description = "naming prefix for created resources"
}

variable "subnet" {
    description = "cidr of the desired subnet for the VPC"
}

variable "snat" {
  description = "snat setting"
}

variable "nameserver" {
    type        = "list"
    description = "nameserver to provide vi DHCP"
    default     = ["8.8.8.8", "8.8.4.4"]
}

variable "ext_net_name" {
    description = "name of the external network (do not change)"
    default     = "admin_external_net"
}
