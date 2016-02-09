require 'spec_helper'

describe 'virtual', :type => :class do

  context 'with defaults for all parameters' do
    it { should contain_class('virtual') }
  end

  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts
      end

      let(:params) {
        {
          :use_experimental => true,
          :tuning_service => true,
          :tuning_logging => true
        }
      }

      it { is_expected.to compile.with_all_deps }

      it { is_expected.to contain_class('virtual::package') }
      it { is_expected.to contain_class('virtual::config') }
      it { is_expected.to contain_class('virtual::service') }

      case facts[:osfamily]
      when 'RedHat'
      else
        it { is_expected.to contain_warning('The current operating system is not supported!') }
      end
    end
  end
end
