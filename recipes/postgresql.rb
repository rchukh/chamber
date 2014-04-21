#
# Cookbook Name:: chamber
# Recipe:: postgresql
#
node.set['postgresql']['enable_pgdg_yum'] = true
node.set['postgresql']['version'] = "9.2"
#node.set['postgresql']['dir'] = "/var/lib/pgsql/#{node['postgresql']['version']}/data"
#node.set['postgresql']['client']['packages'] = ["postgresql#{node['postgresql']['version'].split('.').join}-devel"]
#node.set['postgresql']['server']['packages'] = ["postgresql#{node['postgresql']['version'].split('.').join}-server"]
#node.set['postgresql']['contrib']['packages'] = ["postgresql#{node['postgresql']['version'].split('.').join}-contrib"]
#node.set['postgresql']['server']['service_name'] = "postgresql-#{node['postgresql']['version']}"

node.set['postgresql']['config']['listen_addresses'] = '*'
# Chamber is aimed at dev environments, hence we use simple passwords
node.set['postgresql']['password']['postgres'] = 'postgres'
node.from_file(run_context.resolve_attribute('postgresql', 'default'))

log "message" do
  message "This is the message that will be added to the log: #{node['postgresql']['dir']}"
  level :warn
end

include_recipe 'postgresql::yum_pgdg_postgresql'
include_recipe 'postgresql::server'
include_recipe 'database::postgresql'

# PostgreSQL log analyzer
#package "pgbadger" do
#  action :install
#end
