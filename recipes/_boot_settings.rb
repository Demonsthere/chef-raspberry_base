cookbook_file '/boot/cmdline.txt' do
  source 'cmdline.txt'
  owner 'root'
  group 'root'
  mode '0751'
end

template '/boot/config.txt' do
  source 'config.txt.erb'
  owner 'root'
  group 'root'
  mode '0751'
end
