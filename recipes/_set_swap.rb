template '/etc/dphys-swapfile' do
  source 'dphys-swapfile.erb'
  owner 'root'
  group 'root'
  mode '0644'
end

package 'dphys-swapfile' do
  action :upgrade
  options '-o Dpkg::Options::="--force-confold" --force-yes'
end

service 'dphys-swapfile' do
  action [:start, :enable]
end

execute 'dphys-swapfile setup' do
  action :run
end

execute 'dphys-swapfile swapon' do
  action :run
end
