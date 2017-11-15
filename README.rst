Preparation
===========

To run the vm installation the debian host system needs the following packages:

.. code::
  apt install bridge-utils
  apt install virtinst

Network Setup
=============

The test environment can be run on a PC or laptop, with a simulated
network. To setup the network:

* Create a bridge: :code: `brctl addbr br0`
* If you have cable ethernet, add the ethernet port to your
  bridge: :code: `brctl addif br0 eth0`

VM Scripts
==========

To create a new VM image and install a base debian:

.. code::
  bin/bootstrap-vm <name>

To delete VM images again:

.. code::
  bin/destroy-vm
