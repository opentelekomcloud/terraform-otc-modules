# Terraform Modules for use with Open Teleko Cloud

## Use moduls with terraform

## Module description

### VPC

This modules creates a VPC (Virtual Private Cloud)

**Parameter**

* **name** (naming prefix for created resources)

* **subnet** (cidr of the desired subnet for the VPC)

* **nameserver** (_optional_, nameserver to provide vi DHCP)

**Attributes**

* **network\_id** (the id of the created network)

* **router\_id** (the id of the created router)

* **interface\_port** (the port id of the created router interface)

* **subnet\_id** (the id of the created subnet)

**Native OpenStack resources**

* **openstack\_networking_network\_v2**

* **openstack\_networking_subnet\_v2**

* **openstack\_networking_router\_v2**

* **openstack\_networking_router\_interface\_v2**

### ECS

**Parameter**

**Attributes**

**Native OpenStack resources**

### EVS

**Parameter**

**Attributes**

**Native OpenStack resources**

### ULB

**Parameter**

**Attributes**

**Native OpenStack resources**
