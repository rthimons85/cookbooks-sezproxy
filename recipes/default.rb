#
# Cookbook Name:: ezproxy
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
include_recipe 'apt::default'

package 'ia32-libs' do
  action :install
end
directory '/usr/local/ezproxy' do
  action :create
end
remote_file '/usr/local/ezproxy/ezproxy' do
  source 'https://www.oclc.org/content/dam/support/ezproxy/documentation/download/binaries/6-0-8/ezproxy-linux.bin'
  mode 755
end
bash 'generate ezproxy files' do
  cwd '/usr/local/ezproxy'
  code <<-EOH
    ./ezproxy -m
    EOH
  returns 1
end


