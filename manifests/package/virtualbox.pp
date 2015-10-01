# Class: virtual::package::virtualbox
#
# This class contain the virtualbox packages for virtual module
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage:
#
class virtual::package::virtualbox {
  package { $virtual::params::packageVirtualboxTools: ensure => installed; }
}
