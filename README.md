# Terraform Modules for use with Open Teleko Cloud

## Use modules with terraform

## Module description

### EVS

This modules creates one or more EVS (Elastic Volume Service).

**Parameter**

| Name | Description | Type | Required | Default |
|---|---|---|---|---|
|name|naming prefix for created resources|string|True||
|size\_in\_gb|size of the volume in GByte|string|True||
|ecs\_ids|list of IDs from ECS to attach the volumes to|list|True||
|evs\_count|number of volumes to create|string|False|1|

**Attributes**

| Name | Description | Type |
|---|---|---|
|ids|list of IDs of the created volumes|list|

**Native OpenStack resources**

* **openstack\_blockstorage\_volume\_v2**

* **openstack\_compute\_volume\_attach\_v2**

### ECS

This modules creates one or more ECS (Elastic Cloud Server).

**Parameter**

| Name | Description | Type | Required | Default |
|---|---|---|---|---|
|name|naming prefix for created resources|string|True||
|image|name of the image to use for the server|string|True||
|flavor|name of the flavor to use for the server|string|True||
|pubkey|the public key to deploy on the server|string|True||
|network\_id|the ID of the network to attach the server to|string|True||
|subnet\_id|the ID of the subnet to attach the server to|string|True||
|user\_data|the user data to inject|string|False||
|attach\_eip|whether or not to attach en EIP to the server|string|False||
|security\_groups|list of security group ids to attach to the server|list|False|[]|
|ecs\_count|number of ECS instances to create|string|False|1|
|ext\_net\_name|name of the external network (do not change)|string|False|admin_external_net|

**Attributes**

| Name | Description | Type |
|---|---|---|
|addresses|list of ipv4 addresses of the created servers|list|
|ids|list of IDs of the created servers|list|
|count|number of servers created|string|

**Native OpenStack resources**

* **openstack\_compute\_instance\_v2**

* **openstack\_networking\_port\_v2**

* **openstack\_networking\_floatingip\_v2**

* **openstack\_compute\_keypair\_v2**

### ULB

This modules creates a ULB (Unified Load Balancer).

**Parameter**

| Name | Description | Type | Required | Default |
|---|---|---|---|---|
|name|naming prefix for created resources|string|True||
|subnet\_id|the ID of the subnet to attach the loadbalancer to|string|True||
|members\_count|number of members to add to the loadbalancer|string|True||
|members|the addresses of the memebers that should be added to the loadbalancer|list|True||
|attach\_eip|whether or not to attach an EIP to the loadbalancer|string|False|true|
|protocol|protocol used by the loadbalancer|string|False|HTTP|
|listener\_port|port the loadbalancer should listen on|string|False|80|
|member\_port|port of the members that provide the service to loadbalance|string|False|80|
|monitor\_url\_path|url path to check for member health|string|False|/|
|monitor\_expected\_codes|http code to indicate successful health check|string|False|200|
|monitor\_delay|delay of the health check in seconds|string|False|20|
|monitor\_timeout|timeout of the health check in seconds|string|False|10|
|monitor\_retries|retries of health checks before member gets removed|string|False|5|
|ext\_net\_name|name of the external network (do not change)|string|False|admin_external_net|
|dependencies|dependencies that should be build before the loadbalancer|list|False|[]|

**Attributes**

| Name | Description | Type |
|---|---|---|
|vip\_port\_id|ID of the vip port created by the loadbalancer|string|

**Native OpenStack resources**

* **openstack\_lb\_loadbalancer\_v2**

* **openstack\_lb\_listener\_v2**

* **openstack\_lb\_pool\_v2**

* **openstack\_lb\_member\_v2**

* **openstack\_lb\_monitor\_v2**

* **openstack\_networking\_floatingip\_v2**

### VPC

This modules creates a VPC (Virtual Private Cloud).

**Parameter**

| Name | Description | Type | Required | Default |
|---|---|---|---|---|
|name|naming prefix for created resources|string|True||
|subnet|cidr of the desired subnet for the VPC|string|True||
|nameserver|nameserver to provide vi DHCP|list|False|['8.8.8.8', '8.8.4.4']|
|ext\_net\_name|name of the external network (do not change)|string|False|admin_external_net|

**Attributes**

| Name | Description | Type |
|---|---|---|
|network\_id|the id of the created network|string|
|router\_id|the id of the created router|string|
|interface\_port|the port id of the created router interface|string|
|subnet\_id|the id of the created subnet|string|

**Native OpenStack resources**

* **openstack\_networking\_network\_v2**

* **openstack\_networking\_subnet\_v2**

* **openstack\_networking\_router\_v2**

* **openstack\_networking\_router\_interface\_v2**

