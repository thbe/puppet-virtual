# Class: virtual::service::general
#
# This class contain the general service configuration for virtual machines
#
# Parameters: This class has no parameters
#
class virtual::service::general {
  service { $virtual::params::service_acpid:        ensure => 'stopped', enable => false; }

  service { $virtual::params::service_autofs:       ensure => 'stopped', enable => false; }

  service { $virtual::params::service_avahi_daemon: ensure => 'stopped', enable => false; }

  service { $virtual::params::service_bluetooth:    ensure => 'stopped', enable => false; }

  service { $virtual::params::service_cpuspeed:     ensure => 'stopped', enable => false; }

  service { $virtual::params::service_hidd:         ensure => 'stopped', enable => false; }

  service { $virtual::params::service_irqbalance:   ensure => 'stopped', enable => false; }

  service { $virtual::params::service_iscsi:        ensure => 'stopped', enable => false; }

  service { $virtual::params::service_iscsid:       ensure => 'stopped', enable => false; }

  service { $virtual::params::service_isdn:         ensure => 'stopped', enable => false; }

  service { $virtual::params::service_smartd:       ensure => 'stopped', enable => false; }
}
