# Class: virtual::package
#
# This class contain the packages for virtual machines
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage:
#
class virtual::package {
  if $::is_virtual {
    include virtual::package::general
  }

  if $::virtual == 'kvm' {
    include virtual::package::kvm
  }

  if $::virtual == 'xenu' {
    include virtual::package::xenu
  }

  if $::virtual == 'virtualbox' {
    include virtual::package::virtualbox
  }

  if $::virtual == 'vmware' {
    include virtual::package::vmware
  }

  if $::virtual == 'hyperv' {
    include virtual::package::hyperv
  }
}
