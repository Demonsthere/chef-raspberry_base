package 'qbittorrent' do
  action :install
end

directory "/home/#{node[:raspberry_base][:user]}/.config/qBittorrent" do
  owner node[:raspberry_base][:user]
  group node[:raspberry_base][:user]
  mode '0751'
  action :create
end

template "/home/#{node[:raspberry_base][:user]}/.config/qBittorrent/qBittorrent.conf" do
  source 'qBittorrent.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
end
