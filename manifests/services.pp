# Class: virtual::service
#
# This class contain the service configuration for virtual machines
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage:
#
class virtual::service {
  if $::is_virtual {
    include virtual::service::general
  }

  if $::virtual == 'kvm' {
    include virtual::service::kvm
  }

  if $::virtual == 'xenu' {
    include virtual::service::xenu
  }

  if $::virtual == 'virtualbox' {
    include virtual::service::virtualbox
  }

  if $::virtual == 'vmware' {
    include virtual::service::vmware
  }

  if $::virtual == 'hyperv' {
    include virtual::service::hyperv
  }
}
