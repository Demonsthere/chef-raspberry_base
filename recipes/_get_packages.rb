execute 'apt-get update' do
  action :run
end

node[:raspberry_base][:packages].each do |pkg|
  package pkg do
    action :upgrade
    ignore_failure true
  end
end

cookbook_file 'xscreensaver settings' do
  action :create
  path "/home/#{node[:raspberry_base][:user]}/.xscreensaver"
  source 'xscreensaver'
  owner node[:raspberry_base][:user]
  group node[:raspberry_base][:user]
  mode '0644'
end
