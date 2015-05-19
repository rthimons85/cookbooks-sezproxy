require 'spec_helper'

describe 'ezproxy::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe port '2048' do
    it{should be_listening }
  end
  describe port '443' do
    it {should be_listening}
  end
  describe file  '/usr/local/ezproxy/ezproxy' do
    it{ should be_file }
  end
  describe service 'ezproxy' do
    it{should be_running }
    it{should be_installed }
  end
  describe package 'ia32-libs' do
    it{should be_installed }
  end
  describe command '/usr/local/ezproxy -c' do
    its(:exit_status) { should eq 0 }
  end
#
#
#
#
#

end
