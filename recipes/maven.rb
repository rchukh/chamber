#
# Cookbook Name:: chamber
# Recipe:: maven
#
node.set['maven']['version'] = 3

# Make sure included recipes are using correct values in attributes that are reusing the ones defined above
node.from_file(run_context.resolve_attribute('maven', 'default'))
include_recipe 'maven::default'
