require 'spec_helper'

describe 'virtual', :type => :class do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) { facts }

      let(:params) { { use_experimental: true, tuning_service: true, tuning_logging: true } }

      it { is_expected.to compile.with_all_deps }

      it { is_expected.to contain_class('virtual::params') }
      it { is_expected.to contain_class('virtual::package') }
      it { is_expected.to contain_class('virtual::package::general') }
      it { is_expected.to contain_class('virtual::package::vmware') }
      it { is_expected.to contain_class('virtual::config') }
      it { is_expected.to contain_class('virtual::config::general') }
      it { is_expected.to contain_class('virtual::config::vmware') }
      it { is_expected.to contain_class('virtual::service') }
      it { is_expected.to contain_class('virtual::service::general') }
      it { is_expected.to contain_class('virtual::service::vmware') }

      it { is_expected.to contain_package('open-vm-tools').with_ensure('installed') }

      it { is_expected.to contain_service('acpid').with( 'ensure' => 'stopped', 'enable' => 'false') }
      it { is_expected.to contain_service('avahi-daemon').with( 'ensure' => 'stopped', 'enable' => 'false') }
      it { is_expected.to contain_service('bluetooth').with( 'ensure' => 'stopped', 'enable' => 'false') }
      it { is_expected.to contain_service('cpuspeed').with( 'ensure' => 'stopped', 'enable' => 'false') }
      it { is_expected.to contain_service('hidd').with( 'ensure' => 'stopped', 'enable' => 'false') }
      it { is_expected.to contain_service('irqbalance').with( 'ensure' => 'stopped', 'enable' => 'false') }
      it { is_expected.to contain_service('iscsi').with( 'ensure' => 'stopped', 'enable' => 'false') }
      it { is_expected.to contain_service('iscsid').with( 'ensure' => 'stopped', 'enable' => 'false') }
      it { is_expected.to contain_service('isdn').with( 'ensure' => 'stopped', 'enable' => 'false') }
      it { is_expected.to contain_service('smartd').with( 'ensure' => 'stopped', 'enable' => 'false') }
    end
  end
end
