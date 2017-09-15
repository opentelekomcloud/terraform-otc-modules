variable "name" {
    description = "naming prefix for created resources"
}

variable "subnet_id" {
    description = "the ID of the subnet to attach the loadbalancer to"
}

variable "members_count" {
    description = "number of members to add to the loadbalancer"
}

variable "members" {
    type        = "list"
    description = "the addresses of the memebers that should be added to the loadbalancer"
}

variable "attach_eip" {
    description = "whether or not to attach an EIP to the loadbalancer"
    default     = "true"
}

variable "protocol" {
    description = "protocol used by the loadbalancer"
    default     = "HTTP"
}

variable "listener_port" {
    description = "port the loadbalancer should listen on"
    default     = "80"
}

variable "member_port" {
    description = "port of the members that provide the service to loadbalance"
    default     = "80"
}

variable "monitor_url_path" {
    description = "url path to check for member health"
    default     = "/"
}

variable "monitor_expected_codes" {
    description = "http code to indicate successful health check"
    default     = "200"
}

variable "monitor_delay" {
    description = "delay of the health check in seconds"
    default     = "20"
}

variable "monitor_timeout" {
    description = "timeout of the health check in seconds"
    default     = "10"
}

variable "monitor_retries" {
    description = "retries of health checks before member gets removed"
    default     = "5"
}

variable "ext_net_name" {
    description = "name of the external network (do not change)"
    default     = "admin_external_net"
}

variable "dependencies" {
    type        = "list"
    description = "dependencies that should be build before the loadbalancer"
    default     = []
}
