#
# Cookbook Name:: ejabberd
# Recipe:: default
#
# Copyright (C) 2013 Mojo Lingo
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case node['platform']
when 'ubuntu', 'debian'
  include_recipe 'apt'
when 'centos', 'redhat', 'amazon', 'scientific'
  include_recipe 'yum-epel::default'
end

package "ejabberd"

service "ejabberd" do
  action :enable
end

template "/etc/ejabberd/ejabberd.cfg" do
  source "ejabberd.cfg.erb"
  group 'ejabberd'
  mode '755'
  variables :jabber_domain => node['ejabberd']['jabber_domain']
  notifies :restart, resources('service[ejabberd]')
end