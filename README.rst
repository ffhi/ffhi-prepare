Preparation
===========

To run the vm installation the debian host system needs the following packages:

.. code-block:: bash

    $ apt install bridge-utils
    $ apt install virtinst

Starting from linux-4.14, apparmor seems to be more active, so we need
to disable namespacing by adding

.. code-block:: bash

    namespaces = []

to ``/etc/libvirt/qemu.conf`` and restart libvirtd with ``systemctl
restart libvirtd``.

Network Setup
=============

The test environment can be run on a PC or laptop, with a simulated
network. To setup the network:

* Create a bridge: ``brctl addbr ffhibr0``
* If you have cable ethernet, add the ethernet port to your
  bridge: ``brctl addif ffhibr0 eth0``

libvirt creates a virtual network based on a configuration, defined in
``bin/ffhivnet.xml``. We have a script to set up and ramp down the
virtual network:

.. code-block:: bash

   $ bin/ffhivnet-up

The following sections assume that the virtual network is already ramped
up.

The virtual network created above is "persistent", which means that it
is specified in /etc/libvirt/qemu/network/ffhivnet.xml, so when
restarting the vm host and libvirt, the network is ramped up again.

To undefine the virtual network, we have another script:

.. code-block:: bash

   $ bin/ffhivnet-down

VM Scripts
==========

To create a new VM image and install a base debian:

.. code-block:: bash

    $ bin/vm-bootstrap <name>

To delete VM images again:

.. code-block:: bash

    $ bin/vm-destroy

