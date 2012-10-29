JIP Vagrant VMs
===================

This is a helper repository for the JIP server that provides a set of vagrant
configuration files together with chef cookbooks to provision a bunch of nodes
to test and develop the JIP server.

All nodes currently set up two users:

jipserver/secret - for the jip server account
jipuser/secret   - for the jip client

The nodes use fixed IP's:

# simplessh node
sshnode 10.0.0.50

# Sun/Oracle Grid Engin  node
sgemaster 10.0.0.40

## lsf/openlava node
lsf 10.0.0.30

## slurm node
slmaster 10.0.0.20
