require "spec_helper"

describe package('jenkins') do
  it { should be_installed }
end

describe file('/etc/default/jenkins') do
  it { should be_file }
  it { should contain 'HTTP_PORT=8082' }
  it { should contain 'JENKINS_ARGS="--webroot=/var/cache/$NAME/war --httpPort=$HTTP_PORT --ajp13Port=$AJP_PORT --prefix=$PREFIX"' }
end

describe service('jenkins') do
  it { should be_enabled }
  it { should be_running }
end

describe port(8082) do
  it { should be_listening }
end
