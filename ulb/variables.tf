variable "name" {}

variable "subnet_id" {}

variable "members_count" {}

variable "members" {
    type = "list"
}

variable "attach_eip" {
    default = "true"
}

variable "protocol" {
    default = "HTTP"
}

variable "listener_port" {
    default = "80"
}

variable "member_port" {
    default = "80"
}

variable "monitor_url_path" {
    default = "/"
}

variable "monitor_expected_codes" {
    default = "200"
}

variable "monitor_delay" {
    default = "20"
}

variable "monitor_timeout" {
    default = "10"
}

variable "monitor_retries" {
    default = "5"
}

variable "ext_net_name" {
    default = "admin_external_net"
}

variable "dependencies" {
    type    = "list"
    default = []
}
