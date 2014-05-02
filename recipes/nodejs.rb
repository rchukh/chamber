#
# Cookbook Name:: chamber
# Recipe:: nodejs
#
node.set['nodejs']['install_method'] = 'binary'
node.set['nodejs']['version'] = '0.10.26'
node.set['nodejs']['checksum'] = 'ef5e4ea6f2689ed7f781355012b942a2347e0299da0804a58de8e6281c4b1daa'
node.set['nodejs']['checksum_linux_x64'] = '305bf2983c65edea6dd2c9f3669b956251af03523d31cf0a0471504fd5920aac'
node.set['nodejs']['checksum_linux_x86'] = '8fa2d952556c8b5aa37c077e2735c972c522510facaa4df76d4244be88f4dc0f'
node.set['nodejs']['npm'] = '1.4.4'

# Make sure included recipes are using correct values in attributes which are reusing the ones defined above
node.from_file(run_context.resolve_attribute('nodejs', 'default'))

include_recipe 'nodejs'
include_recipe 'nodejs::npm'

# Install command line grunt
execute 'npm install -g grunt-cli' unless installed?('grunt')
