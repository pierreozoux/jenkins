#
# Cookbook Name:: jenkins
# Recipe:: default
#

include_recipe 'jenkins::server'

# Front Jenkins with an HTTP server
case node[:jenkins][:http_proxy][:variant]
when "nginx"
  include_recipe "jenkins::proxy_nginx"
when "apache2"
  include_recipe "jenkins::proxy_apache2"
end
