require 'spec_helper'

describe port(80) do
  it { should be_listening }
end

describe port(4949) do
  it { should be_listening }
end

describe file('/etc/apache2/conf.d/munin') do
  it { should contain 'munin' }
end

describe file('/etc/cron.d/munin') do
  it { should contain 'munin-cron' }
end

describe file('/etc/cron.d/munin-node') do
  it { should contain 'munin' }
end
