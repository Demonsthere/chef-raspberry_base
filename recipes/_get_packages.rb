execute 'apt-get update' do
  action :run
end

node[:raspberry_base][:packages].each do |pkg|
  package pkg do
    action :upgrade
  end
end
