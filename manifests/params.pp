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
      $linux                       = true
      $redhat                      = true
    }
    default: {
      $linux                       = false
    }
  }

  # General definitions
  $use_experimental                = false
  $tuning_service                  = false
  $tuning_logging                  = false

  # Service definitions
  $serviceAcpid                    = 'acpid'
  $serviceAutofs                   = 'autofs'
  $serviceAvahiDaemon              = 'avahi-daemon'
  $serviceBluetooth                = 'bluetooth'
  $serviceCpuspeed                 = 'cpuspeed'
  $serviceGpm                      = 'gpm'
  $serviceHidd                     = 'hidd'
  $serviceIrqbalance               = 'irqbalance'
  $serviceIscsi                    = 'iscsi'
  $serviceIscsid                   = 'iscsid'
  $serviceIsdn                     = 'isdn'
  $serviceSmartd                   = 'smartd'

  # KVM definitions

  # XEN definitions
  $packageXeGuestUtilities         = 'xe-guest-utilities'
  $packageXeGuestUtilitiesXenstore = 'xe-guest-utilities-xenstore'

  # VirtualBox definitions
  $packageVirtualboxTools          = 'VirtualBox-5.0'

  # VMware definitions
  $packageVmwareGuestUtilities     = 'vmware-tools-esx-nox'

  # Hyper-V definitions
  $packageHypervKernelModule       = 'kmod-microsoft-hyper-v'
  $packageHypervTools              = 'microsoft-hyper-v'
}
