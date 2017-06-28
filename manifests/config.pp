# Class: virtual::config
#
# This class contain the configuration for virtual machines
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage:
#
class virtual::config {
  if $::is_virtual {
    include ::virtual::config::general
  }

  if $::virtual == 'kvm' {
    include ::virtual::config::kvm
  }

  if $::virtual == 'xenu' {
    include ::virtual::config::xenu
  }

  if $::virtual == 'virtualbox' {
    include ::virtual::config::virtualbox
  }

  if $::virtual == 'vmware' {
    include ::virtual::config::vmware
  }

  if $::virtual == 'hyperv' {
    include ::virtual::config::hyperv
  }
}
