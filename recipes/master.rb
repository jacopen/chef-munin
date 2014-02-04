#
# Cookbook Name:: munin
# Recipe:: master
#

apt_repository "munin-ppa" do
  uri "http://ppa.launchpad.net/tuxpoldo/munin/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "D294A752"
  deb_src true
end

apt_preference "munin" do
  glob "munin*"
  pin "release o=LP-PPA-tuxpoldo-munin"
  pin_priority "991"
end

%w(apache2 munin libapache2-mod-fcgid).each do |pkg|
  package pkg
end

%w(apache.conf munin.conf).each do |conf|
  template "/etc/munin/#{conf}" do
    source "#{conf}.erb"
  end
end

service "apache2" do
  action :restart
end
