require 'spec_helper'

describe 'virtual', :type => :class do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) { facts }

      let(:params) { { use_experimental: true, tuning_service: true, tuning_logging: true } }

      it { is_expected.to compile.with_all_deps }

      it { is_expected.to contain_class('virtual::package') }
      it { is_expected.to contain_class('virtual::config') }
      it { is_expected.to contain_class('virtual::service') }
    end
  end
end
