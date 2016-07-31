package 'qbittorrent-nox' do
  action :install
end

directory "/home/#{node[:raspberry_base][:user]}/.config/qBittorrent" do
  owner node[:raspberry_base][:user]
  group node[:raspberry_base][:user]
  mode '0751'
  action :create
  recursive true
end

template "/home/#{node[:raspberry_base][:user]}/.config/qBittorrent/qBittorrent.conf" do
  source 'qBittorrent.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
end

template '/etc/systemd/system/qbittorrent.service' do
  source 'qbittorrent.service.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[qbittorrent]', :delayed
end

template '/etc/init.d/qbittorrent' do
  source 'qbittorrent.init.erb'
  owner 'root'
  group 'root'
  mode '0755'
  notifies :restart, 'service[qbittorrent]', :delayed
end

service 'qbittorrent' do
  supports status: true, restart: true, reload: true
  action [:start, :enable]
end
