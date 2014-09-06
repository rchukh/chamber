#
# Cookbook Name:: chamber
# Recipe:: tomcat
#
# Dependency:: chamber::jdk
#
node.set['tomcat']['version'] = '7'
node.set['tomcat']['java_opts'] = '-Xmx32M -Xmx128M -Djava.awt.headless=true'

# Make sure included recipes are using correct values in attributes which are reusing the ones defined above
node.from_file(run_context.resolve_attribute('tomcat', 'default'))

include_recipe 'tomcat::default'
include_recipe 'tomcat::users'
