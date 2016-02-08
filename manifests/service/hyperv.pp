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
  service { $virtual::params::service_hyperv_hv_fcopy_daemon: ensure => 'started', enable => true; }

  service { $virtual::params::service_hyperv_hv_kvp_daemon:   ensure => 'started', enable => true; }

  service { $virtual::params::service_hyperv_hv_vss_daemon:   ensure => 'started', enable => true; }
}
