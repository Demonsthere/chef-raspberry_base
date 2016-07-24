execute 'Update sources' do
  command 'apt-get update'
  action :run
end

execute 'System upgrade' do
  command 'apt-get -uy -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" --force-yes upgrade'
  action :run
  environment ({ 'DEBIAN_FRONTEND' => 'noninteractive' })
end

execute 'Dstribution upgrade' do
  command 'apt-get -uy -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" --force-yes dist-upgrade'
  action :run
  environment ({ 'DEBIAN_FRONTEND' => 'noninteractive' })
end
