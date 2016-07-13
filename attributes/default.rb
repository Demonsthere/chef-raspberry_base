# platform config
default[:raspberry_base][:config][:arm_freq] = 1000
default[:raspberry_base][:config][:core_freq] = 500
default[:raspberry_base][:config][:sdram_freq] = 500
default[:raspberry_base][:config][:over_voltage] = 2
default[:raspberry_base][:config][:gpu_mem] = 512
default[:raspberry_base][:config][:swap_dir] = '/swap'
default[:raspberry_base][:config][:swap_size] = 512
# general settings
default[:raspberry_base][:user] = 'vagrant'
default[:raspberry_base][:packages] = %w(htop tightvncserver screen usbmount gnash)

# torrent settings
default[:raspberry_base][:torrent][:foo] = 'bar'
