require "spec_helper"

describe group('jetty') do
  it { should exist }
end

describe user('jetty') do
  it { should exist }
  it { should belong_to_group 'jetty' }
end

describe file('/opt/jetty') do
  it { should be_directory }
end

describe file('/etc/init.d/jetty') do
  it { should be_file }
end

describe file('/etc/default/jetty') do
  it { should be_file }
end

describe file('/var/log/jetty') do
  it { should be_directory }
end

describe service('jetty') do
  it { should be_enabled }
  it { should be_running }
end

describe port(8081) do
  it { should be_listening }
end
