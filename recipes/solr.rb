#
# Cookbook Name:: chamber
# Recipe:: solr
#
# Dependency:: chamber::jdk
# Dependency:: chamber::maven
# Dependency:: chamber::tomcat
#
node.set[:chamber][:solr][:version] = '4.8.0'
node.set[:chamber][:solr][:home]    = '/usr/local/solr'
# Using Tomcat configuration since we are depending on Tomcat webserver
node.set[:chamber][:solr][:user]	= node[:tomcat][:user]
node.set[:chamber][:solr][:group]	= node[:tomcat][:group]
node.set[:chamber][:solr][:path]    = node[:tomcat][:webapp_dir]
node.set[:chamber][:solr][:log_dir] = node[:tomcat][:log_dir]

# Make sure included recipes are using correct values in attributes which are reusing the ones defined above
node.from_file(run_context.resolve_attribute('chamber-solr', 'default'))
include_recipe 'chamber-solr::default'
