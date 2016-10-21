cookbook_file '/usr/bin/going_to_sleep.sh' do
  source 'going_to_sleep.sh'
  owner 'root'
  group 'root'
  mode '0755'
end

cron 'Go to sleep, if no ssh sessions found' do
  hour '22'
  minute '00'
  day '*'
  month '*'
  weekday '*'
  command '/usr/bin/going_to_sleep.sh'
  user 'root'
  path '/bin:/usr/bin'
  shell '/bin/bash'
  only_if { node[:raspberry_base][:auto_shutdown] == true }
end
