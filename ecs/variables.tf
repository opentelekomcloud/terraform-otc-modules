variable "name" {
    description = "naming prefix for created resources"
}

variable "image" {
    description = "name of the image to use for the server"
}

variable "flavor" {
    description = "name of the flavor to use for the server"
}

variable "pubkey" {
    description = "the public key to deploy on the server"
}

variable "network_id" {
    description = "the ID of the network to attach the server to"
}

variable "subnet_id" {
    description = "the ID of the subnet to attach the server to"
}

variable "user_data" {
    description = "the user data to inject"
    default     = ""
}

variable "attach_eip" {
    description = "whether or not to attach en EIP to the server"
    default      = ""
}

variable "security_groups" {
    type        = "list"
    description = "list of security group ids to attach to the server"
    default     = []
}

variable "ecs_count" {
    description = "number of ECS instances to create"
    default     = "1"
}

variable "ext_net_name" {
    description = "name of the external network (do not change)"
    default     = "admin_external_net"
}

variable "availability_zone" {
    description = "name of the external network (do not change)"
    default     = ""
}
