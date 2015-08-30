require 'spec_helper'

describe package('python-pycurl') do
  it { should be_installed }
end

describe package('python-httplib2') do
  it { should be_installed }
end

describe package('wget') do
  it { should be_installed }
end

describe package('git') do
  it { should be_installed }
end

describe package('language-pack-ja') do
  it { should be_installed }
end

describe command('locale') do
  its(:stdout) { should match /LANG=ja_JP.UTF-8/ }
  its(:stdout) { should match /LC_ALL=ja_JP.UTF-8/ }
end

describe command('date') do
  its(:stdout) { should match /JST/ }
end
