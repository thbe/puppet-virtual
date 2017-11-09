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
  $service_avahi_daemon                = 'avahi-daemon'
  $service_bluetooth                   = 'bluetooth'
  $service_cpuspeed                    = 'cpuspeed'
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

  $service_xe_linux_distribution       = 'xe-linux-distribution'

  # VirtualBox definitions
  $package_virtualbox_tools            = 'VirtualBox-5.0'

  $service_vboxadd                     = 'vboxadd'
  $service_vboxadd_service             = 'vboxadd-service'

  # VMware definitions
  $package_vmware_guest_utilities      = 'open-vm-tools'

  # Hyper-V definitions, no native support
  $package_hyperv_kernel_module        = 'kmod-microsoft-hyper-v'
  $package_hyperv_tools                = 'microsoft-hyper-v'

  $service_hyperv_hv_fcopy_daemon      = 'hv_fcopy_daemon'
  $service_hyperv_hv_kvp_daemon        = 'hv_kvp_daemon'
  $service_hyperv_hv_vss_daemon        = 'hv_vss_daemon'

  # Hyper-V definitions, native support
  $package_hyperv_daemons              = 'hyperv-daemons'
  $package_hyperv_daemons_license      = 'hyperv-daemons-license'
  $package_hypervfcopyd                = 'hypervfcopyd'
  $package_hypervkvpd                  = 'hypervkvpd'
  $package_hypervvssd                  = 'hypervvssd'

  $service_hypervfcopyd                = 'hypervfcopyd'
  $service_hypervkvpd                  = 'hypervkvpd'
  $service_hypervvssd                  = 'hypervvssd'

}
