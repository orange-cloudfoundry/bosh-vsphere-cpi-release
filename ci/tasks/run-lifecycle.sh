#!/usr/bin/env bash

set -e

source bosh-cpi-release/ci/tasks/utils.sh

check_param BOSH_VSPHERE_CPI_HOST
check_param BOSH_VSPHERE_CPI_USER
check_param BOSH_VSPHERE_CPI_PASSWORD
check_param BOSH_VSPHERE_VLAN
check_param BOSH_VSPHERE_CPI_DATACENTER
check_param BOSH_VSPHERE_CPI_CLUSTER
check_param BOSH_VSPHERE_CPI_DATASTORE_PATTERN
check_param BOSH_VSPHERE_CPI_PERSISTENT_DATASTORE_PATTERN
check_param BOSH_VSPHERE_CPI_SECOND_DATASTORE
check_param BOSH_VSPHERE_CPI_RESOURCE_POOL
check_param BOSH_VSPHERE_CPI_SECOND_RESOURCE_POOL
check_param BOSH_VSPHERE_CPI_SECOND_CLUSTER
check_param BOSH_VSPHERE_CPI_SECOND_CLUSTER_DATASTORE
check_param BOSH_VSPHERE_CPI_SECOND_CLUSTER_RESOURCE_POOL
check_param BOSH_VSPHERE_CPI_VM_FOLDER
check_param BOSH_VSPHERE_CPI_TEMPLATE_FOLDER
check_param BOSH_VSPHERE_CPI_DISK_PATH

source /etc/profile.d/chruby.sh
chruby 2.1.2

cd bosh-src/bosh_vsphere_cpi

export BOSH_VSPHERE_STEMCELL=../../stemcell/stemcell.tgz

bundle install
bundle exec rake spec:lifecycle
