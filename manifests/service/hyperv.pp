# Class: virtual::service::hyperv
#
# This class contain the Hyper-V service configuration for virtual module
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage:
#
class virtual::service::hyperv {
  # Get exact operating system version to determin if packages are build in or separate
  $local_os_major = regsubst($::operatingsystemrelease, '\.[0-9]$', '\1')
  $local_os_minor = regsubst($::operatingsystemrelease, '^[0-9]\.', '\1')

  # Check if hyperv tools are built in
  if $local_os_major == '6' {
    if $local_os_minor >= '7' {
      $local_hyperv_tools = 'built-in'
    }
  }
  if $local_os_major == '7' {
    if $local_os_minor >= '1' {
      $local_hyperv_tools = 'built-in'
    }
  }

  if $local_hyperv_tools == 'built-in' {
    service { $virtual::params::service_hypervfcopyd:           ensure => 'started', enable => true; }
    service { $virtual::params::service_hypervkvpd:             ensure => 'started', enable => true; }
    service { $virtual::params::service_hypervvssd:             ensure => 'started', enable => true; }
  } else {
    service { $virtual::params::service_hyperv_hv_fcopy_daemon: ensure => 'started', enable => true; }
    service { $virtual::params::service_hyperv_hv_kvp_daemon:   ensure => 'started', enable => true; }
    service { $virtual::params::service_hyperv_hv_vss_daemon:   ensure => 'started', enable => true; }
  }
}
