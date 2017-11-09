require 'spec_helper_acceptance'

describe 'virtual' do
  let(:manifest) {
    <<-CLASSPARAMETER
class { 'virtual':
  use_experimental => false,
  install_packages => true,
  tuning_service   => false,
  tuning_logging   => false,
}
CLASSPARAMETER
  }

  it 'should apply without errors' do
    apply_manifest(manifest, :catch_failures => true)
  end

  it 'should apply a second time without changes' do
    @result = apply_manifest(manifest)
    expect(@result.exit_code).to be_zero
  end

  describe service('acpid') do
    it { should be_disabled }
    it { should be_stopped }
  end

  describe service('avahi-daemon') do
    it { should be_disabled }
    it { should be_stopped }
  end

  describe service('bluetooth') do
    it { should be_disabled }
    it { should be_stopped }
  end

  describe service('cpuspeed') do
    it { should be_disabled }
    it { should be_stopped }
  end

  describe service('hidd') do
    it { should be_disabled }
    it { should be_stopped }
  end

  describe service('irqbalance') do
    it { should be_disabled }
    it { should be_stopped }
  end

  describe service('iscsi') do
    it { should be_disabled }
    it { should be_stopped }
  end

  describe service('iscsid') do
    it { should be_disabled }
    it { should be_stopped }
  end

  describe service('isdn') do
    it { should be_disabled }
    it { should be_stopped }
  end

  describe service('smartd') do
    it { should be_disabled }
    it { should be_stopped }
  end
end
