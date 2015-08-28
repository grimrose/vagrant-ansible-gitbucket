require "spec_helper"

describe file('/opt/jetty/webapps/gitbucket.war') do
  it { should be_file }
end
