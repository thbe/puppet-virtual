# Class: virtual::package::vmware
#
# This class contain the vmware packages for virtual module
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage:
#
class virtual::package::vmware {
  package { $virtual::params::package_vmware_guest_utilities: ensure => installed; }
}
