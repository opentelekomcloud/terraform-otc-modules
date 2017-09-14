# Terraform Modules for use with Open Teleko Cloud

## Use modules with terraform

## Module description

### VPC

This modules creates a VPC (Virtual Private Cloud)

**Parameter**

| Name | Description | Required | Default |
|---|---|---|---|
| name | naming prefix for created resources | True | |
| subnet | cidr of the desired subnet for the VPC | True | |
| nameserver | nameserver to provide vi DHCP | False | 8.8.8.8, 8.8.4.4 |

**Attributes**

| Name | Description |
|---|---|
| network\_id | the id of the created network |
| router\_id | the id of the created router |
| interface\_port| the port id of the created router interface |
| subnet\_id | the id of the created subnet |

**Native OpenStack resources**

* **openstack\_networking_network\_v2**

* **openstack\_networking_subnet\_v2**

* **openstack\_networking_router\_v2**

* **openstack\_networking_router\_interface\_v2**

### ECS

This module creates one or more ECS (Elastic Cloud Server)

**Parameter**

| Name | Description | Required | Default |
|---|---|---|---|
| name | naming prefix for created resources | True | |
| image | name of the image to use for the server| True | |
| flavor | name of the flavor | True | |
| pubkey | the public key to deploy on the server | True| |
| network\_id | the ID of the network to attach the server to | True | |
| subnet\_id | the ID of the subnet to attach the server to | True |
| user\_data | the user data to inject | False | None |
| attach\_eip | weather or not to attach en EIP to the server | False | None |
| security\_groups | list of security group ids to attach to the server | False | None |
| ecs\_count | how many ECS should be created| False | 1 |

**Attributes**

**Native OpenStack resources**

### EVS

This module creates one or more EVS (Elastic Volume Service)

**Parameter**

**Attributes**

**Native OpenStack resources**

### ULB

This module creates a ULB (Unified Load Balancer)

**Parameter**

**Attributes**

**Native OpenStack resources**
