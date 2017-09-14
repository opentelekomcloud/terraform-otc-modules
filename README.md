# Terraform Modules for use with Open Teleko Cloud

## Use modules with terraform

## Module description

### VPC

This modules creates a VPC (Virtual Private Cloud)

**Parameter**

| Name | Description | Type | Required | Default |
|---|---|---|---|---|
| name | naming prefix for created resources | String | True | |
| subnet | cidr of the desired subnet for the VPC | String | True | |
| nameserver | nameserver to provide vi DHCP | List | False | 8.8.8.8, 8.8.4.4 |

**Attributes**

| Name | Description | Type |
|---|---|---|
| network\_id | the id of the created network | String |
| router\_id | the id of the created router | String |
| interface\_port| the port id of the created router interface | String |
| subnet\_id | the id of the created subnet | String |

**Native OpenStack resources**

* **openstack\_networking_network\_v2**

* **openstack\_networking_subnet\_v2**

* **openstack\_networking_router\_v2**

* **openstack\_networking_router\_interface\_v2**

### ECS

This module creates one or more ECS (Elastic Cloud Server)

**Parameter**

| Name | Description | Type | Required | Default |
|---|---|---|---|---|
| name | naming prefix for created resources | String | True | |
| image | name of the image to use for the server| String |True | |
| flavor | name of the flavor | String | True | |
| pubkey | the public key to deploy on the server | String | True| |
| network\_id | the ID of the network to attach the server to | String |True | |
| subnet\_id | the ID of the subnet to attach the server to | String | True |
| user\_data | the user data to inject | String | False | None |
| attach\_eip | weather or not to attach en EIP to the server | String |False | None |
| security\_groups | list of security group ids to attach to the server | List | False | None |
| ecs\_count | how many ECS should be created| String | False | 1 |

**Attributes**

| Name | Description | Type |
|---|---|---|
| addresses | list of ipv4 addresses of the created servers | List |
| ids | list of IDs of the created servers | List |
| count | number of servers created | String |

**Native OpenStack resources**

* **openstack\_compute\_instance\_v2**

* **openstack\_networking\_port\_v2**

* **openstack\_networking\_floatingip\_v2**

* **openstack\_compute\_keypair\_v2**

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
