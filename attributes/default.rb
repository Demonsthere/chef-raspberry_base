# platform config
default[:raspberry_base][:config][:arm_freq] = 1000
default[:raspberry_base][:config][:core_freq] = 500
default[:raspberry_base][:config][:sdram_freq] = 500
default[:raspberry_base][:config][:over_voltage] = 2
default[:raspberry_base][:config][:gpu_mem] = 256
default[:raspberry_base][:config][:swap_dir] = '/swap'
default[:raspberry_base][:config][:swap_size] = 512
# general settings
default[:raspberry_base][:user] = 'vagrant'
default[:raspberry_base][:packages] = %w(htop tightvncserver screen usbmount gnash git xscreensaver)

# torrent settings
default[:raspberry_base][:torrent][:foo] = 'bar'
default[:raspberry_base][:torrent][:auto_start] = true
default[:raspberry_base][:torrent][:file_dir] = '/media/pi/Data/torrents'
default[:raspberry_base][:torrent][:web_ui] = true
default[:raspberry_base][:torrent][:web_port] = 8080
