#
# Cookbook Name:: chamber
# Recipe:: nodejs
#
node.set['nodejs']['install_method'] = 'binary'
node.set['nodejs']['version'] = '0.10.31'
node.set['nodejs']['binary']['checksum_linux_x64'] = '493aa5d4fac0f34df01b07c7d276f1da8d5139df82374c599ab932e740d52147'
node.set['nodejs']['binary']['checksum_linux_x86'] = 'fd6549cc1df26eb769a6f4a170d750acf6425ef2112f4542b95efcd73d51146b'

# Make sure included recipes are using correct values in attributes which are reusing the ones defined above
node.from_file(run_context.resolve_attribute('nodejs', 'default'))

include_recipe 'nodejs'
include_recipe 'nodejs::npm'

# Install command line grunt
execute 'npm install -g grunt-cli' unless installed?('grunt')
