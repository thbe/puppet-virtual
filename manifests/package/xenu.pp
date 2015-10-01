# Class: virtual::package::xenu
#
# This class contain the xenu packages for virtual module
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage:
#
class virtual::package::xenu {
  package { $virtual::params::packageXeGuestUtilities: ensure => installed; }

  package { $virtual::params::packageXeGuestUtilitiesXenstore: ensure => installed; }
}
