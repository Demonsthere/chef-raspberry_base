#
# Cookbook Name:: raspberry_base
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe 'apt'
include_recipe 'git'
include_recipe 'raspberry_base::_boot_settings'
include_recipe 'raspberry_base::_set_swap'
include_recipe 'raspberry_base::_get_packages'
include_recipe 'raspberry_base::_set_torrent'
