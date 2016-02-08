# Class: virtual::package::hyperv
#
# This class contain the Hyper-V packages for virtual module
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage:
#
class virtual::package::hyperv {
  package { $virtual::params::package_hyperv_kernel_module: ensure => installed; }

  package { $virtual::params::package_hyperv_tools: ensure => installed; }
}
