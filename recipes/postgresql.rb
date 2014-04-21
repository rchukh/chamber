#
# Cookbook Name:: chamber
# Recipe:: postgresql
#
node.set['postgresql']['enable_pgdg_yum'] = true
node.set['postgresql']['version'] = '9.2'
node.set['postgresql']['config']['listen_addresses'] = '*'
# Chamber is aimed at dev environments, hence we use simple passwords
node.set['postgresql']['password']['postgres'] = 'postgres'
# Make sure included recipes are using correct values in attributes which are reusing the ones defined above
node.from_file(run_context.resolve_attribute('postgresql', 'default'))
include_recipe 'postgresql::yum_pgdg_postgresql'
include_recipe 'postgresql::server'
include_recipe 'database::postgresql'

# PostgreSQL log analyzer
# package "pgbadger" do
#   action :install
# end
