#!/bin/bash
apt-get -y update
apt-get -y install puppet
puppet module install garethr-docker --version 5.3.0
puppet module install arioch-redis --version 1.2.3

# Demo purposes
puppet module install puppetlabs-postgresql --version 4.8.0
