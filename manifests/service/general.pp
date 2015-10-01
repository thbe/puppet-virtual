# Class: virtual::service::general
#
# This class contain the general service configuration for virtual machines
#
# Parameters: This class has no parameters
#
class virtual::service::general {
  service { $virtual::params::acpid:              ensure => 'stopped', enable => false; }

  service { $virtual::params::serviceAutofs:      ensure => 'stopped', enable => false; }

  service { $virtual::params::serviceAvahiDaemon: ensure => 'stopped', enable => false; }

  service { $virtual::params::serviceBluetooth:   ensure => 'stopped', enable => false; }

  service { $virtual::params::serviceCpuspeed:    ensure => 'stopped', enable => false; }

  service { $virtual::params::serviceGpm:         ensure => 'stopped', enable => false; }

  service { $virtual::params::serviceHidd:        ensure => 'stopped', enable => false; }

  service { $virtual::params::serviceIrqbalance:  ensure => 'stopped', enable => false; }

  service { $virtual::params::serviceIscsi:       ensure => 'stopped', enable => false; }

  service { $virtual::params::serviceIscsid:      ensure => 'stopped', enable => false; }

  service { $virtual::params::serviceIsdn:        ensure => 'stopped', enable => false; }
  
  service { $virtual::params::serviceSmartd:      ensure => 'stopped', enable => false; }
}
