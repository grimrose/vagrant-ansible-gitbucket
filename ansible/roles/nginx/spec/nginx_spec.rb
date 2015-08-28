require 'spec_helper'

describe package('nginx') do
  it { should be_installed }
end

describe file('/etc/nginx/sites-available/ci') do
  it { should be_file }
end

describe file('/etc/nginx/sites-enabled/ci') do
  it { should be_file }
end

describe file('/etc/nginx/sites-enabled/default') do
  it { should_not be_readable }
end

describe file('/etc/nginx/sites-enabled/gitbucket') do
  it { should_not be_readable }
end

describe file('/etc/nginx/nginx.conf') do
  it { should be_file }
  it { should contain('proxy_cache_path') }
end

describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end
