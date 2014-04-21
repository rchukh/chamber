#
# Cookbook Name:: chamber
# Recipe:: jdk
#
# Workaround for Oracle which is not supporting normal download from website
cookbook_file "/tmp/jdk-7u55-linux-x64.tar.gz" do
  source "vendor/jdk-7u55-linux-x64.tar.gz"
  mode 0644
end
cookbook_file "/tmp/UnlimitedJCEPolicyJDK7.zip" do
  source "vendor/UnlimitedJCEPolicyJDK7.zip"
  mode 0644
end

node.set['java']['jdk_version'] = '7'
node.set['java']['install_flavor'] = 'oracle'
node.set['java']['oracle']['accept_oracle_download_terms'] = true
node.set['java']['jdk']['7']['x86_64']['url'] = 'file:///tmp/jdk-7u55-linux-x64.tar.gz'
node.set['java']['jdk']['7']['x86_64']['checksum'] = '9e1fb7936f0e5aaa1e64d36ba640bc1f'
node.set['java_ext']['jce']['7']['url'] = 'file:///tmp/UnlimitedJCEPolicyJDK7.zip'

include_recipe 'java::default'
include_recipe 'java_ext::jce'
