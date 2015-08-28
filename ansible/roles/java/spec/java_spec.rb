require 'spec_helper'

describe package('oracle-java8-installer') do
  it { should be_installed }
end

describe package('oracle-java8-set-default') do
  it { should be_installed }
end

describe command('java -version') do
  it { should return_stdout /java version/ }
  it { should return_stdout /build 1.8/ }
end
