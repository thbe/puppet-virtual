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
  # Get exact operating system version to determin if packages are build in or separate
  $local_os_major = regsubst($::operatingsystemrelease, '^([0-9]).*', '\1')
  $local_os_minor = regsubst($::operatingsystemrelease, '^[0-9]\.([0-9]).*', '\1')

  # Check if hyperv tools are built in
  if $local_os_major == '5' {
    if $local_os_minor >= '9' {
      $local_hyperv_tools = 'built-in'
    }
  }
  if $local_os_major == '6' {
    if $local_os_minor >= '4' {
      $local_hyperv_tools = 'built-in'
    }
  }
  if $local_os_major == '7' {
    $local_hyperv_tools = 'built-in'
  }

  if $local_hyperv_tools == 'built-in' {
    package { $virtual::params::package_hyperv_kernel_module:   ensure => absent; }
    package { $virtual::params::package_hyperv_tools:           ensure => absent; }

    package { $virtual::params::package_hyperv_daemons:         ensure => installed; }
    package { $virtual::params::package_hyperv_daemons_license: ensure => installed; }
    package { $virtual::params::package_hypervfcopyd:           ensure => installed; }
    package { $virtual::params::package_hypervkvpd:             ensure => installed; }
    package { $virtual::params::package_hypervvssd:             ensure => installed; }
  } else {
    package { $virtual::params::package_hyperv_kernel_module:   ensure => installed; }
    package { $virtual::params::package_hyperv_tools:           ensure => installed; }
  }
}
