# Class: virtual::service::virtualbox
#
# This class contain the virtualbox service configuration for virtual module
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage:
#
class virtual::service::virtualbox {
  service { $virtual::params::service_vboxadd:         ensure => 'running', enable => true; }
  service { $virtual::params::service_vboxadd_service: ensure => 'running', enable => true; }
}
