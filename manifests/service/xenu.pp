# Class: virtual::service::xenu
#
# This class contain the XEN service configuration for virtual module
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage:
#
class virtual::service::xenu {
  service { $virtual::params::service_xe_linux_distribution: ensure => 'running', enable => true; }
}
