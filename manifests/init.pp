# == Class: virtual
#
# This is the virtual module. This module install all things
# required to setup VMs for specific hypervisor.
#
# === Parameters
#
# Here is the list of parameters used by this module.
#
# [*experimental*]
#   Activate experimental features (currently unused)
#   Default value is false
#
# === Variables
#
# No additonal variables are required for this module
#
# === Examples
#
#  class { '::virtual':
#    experimental => false,
#  }
#
# === Authors
#
# Thomas Bendler <project@bendler-net.de>
#
# === Copyright
#
# Copyright 2015 Thomas Bendler, unless otherwise noted.
#
class virtual (
  $experimental = false,
  ) inherits virtual::params {

  # Start workflow
  if $virtual::params::linux {
    # Containment
    contain virtual::package
    contain virtual::config
    contain virtual::service

    # Include classes
    Class['virtual::package'] ->
    Class['virtual::config'] ->
    Class['virtual::service']
  }
}
