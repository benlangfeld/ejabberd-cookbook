require 'spec_helper'

describe 'ejabberd' do
  describe user('ejabberd') do
    it { should exist }
    it { should belong_to_group 'ejabberd' }
  end

  describe service('ejabberd') do
    it { should be_enabled }
    it { should be_running }
  end

  describe command('sudo ejabberdctl status') do
    it { should return_stdout /ejabberd 2\.\d*\.\d* is running in that node/ }
  end

  describe port(5222) do
    it { should be_listening.with('tcp') }
  end

  describe file('/etc/ejabberd/ejabberd.cfg') do
    it { should contain '{hosts, ["testkitchen.example.com"]}.' }
  end
end
