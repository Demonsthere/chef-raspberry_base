require 'spec_helper'

describe 'raspberry_base::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  it 'does something' do
    skip 'Replace this with meaningful tests'
  end

  config_files = %w(/boot/cmdline.txt /boot/config.txt /etc/dphys-swapfile /etc/systemd/system/qbittorrent.service)
  services = %w(dphys-swapfile qbittorrent)

  config_files.each do |cfg|
    describe file(cfg) do
      it { should be_file }
      it { should exist }
    end
  end

  services.each do |serv|
    describe service(serv) do
      it { should be_enabled }
      it { should be_running }
    end
  end
end
