
chef_gem 'chef-rewind'
require 'chef/rewind'

include_recipe 'haproxy'

rewind :template => "/etc/haproxy/haproxy.cfg" do
  owner "root"
  group "root"
  mode 0644
  source "haproxy.cfg.erb"
  cookbook_name "tk-haproxy"
  notifies :reload, "service[haproxy]"
  variables(
            :backend_ips => node[:tk_haproxy][:backend_ips],
            )
end

