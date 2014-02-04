#
# Cookbook Name:: munin-node
# Recipe:: default
#

package "munin-node"

template "/etc/munin/munin-node.conf" do
  source "munin-node.conf.erb"
  owner "root"
  group "root"
  mode "0644"
end

service "munin-node" do
  action :restart
end
