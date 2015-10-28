# Class: virtual::params
#
# This class contain the parameters for virtual module
#
# Parameters:   This module has no parameters
#
# Actions:      This module has no actions
#
# Requires:     This module has no requirements
#
# Sample Usage:
#
class virtual::params {
  # Operating system specific definitions
  case $::osfamily {
    'RedHat' : {
      $linux                           = true
      $redhat                          = true
    }
    default: {
      $linux                           = false
    }
  }

  # General definitions
  $use_experimental                    = false
  $tuning_service                      = false
  $tuning_logging                      = false

  # Service definitions
  $service_acpid                       = 'acpid'
  $service_autofs                      = 'autofs'
  $service_avahi_daemon                = 'avahi-daemon'
  $service_bluetooth                   = 'bluetooth'
  $service_cpuspeed                    = 'cpuspeed'
  $service_gpm                         = 'gpm'
  $service_hidd                        = 'hidd'
  $service_irqbalance                  = 'irqbalance'
  $service_iscsi                       = 'iscsi'
  $service_iscsid                      = 'iscsid'
  $service_isdn                        = 'isdn'
  $service_smartd                      = 'smartd'

  # KVM definitions

  # XEN definitions
  $package_xe_guest_utilities          = 'xe-guest-utilities'
  $package_xe_guest_utilities_xenstore = 'xe-guest-utilities-xenstore'

  # VirtualBox definitions
  $package_virtualbox_tools            = 'VirtualBox-5.0'

  # VMware definitions
  $package_vmware_guest_utilities      = 'vmware-tools-esx-nox'

  # Hyper-V definitions
  $package_hyperv_kernel_module        = 'kmod-microsoft-hyper-v'
  $package_hyperv_tools                = 'microsoft-hyper-v'
}
