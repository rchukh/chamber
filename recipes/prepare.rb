# Workaround for Oracle which is not supporting normal download from website
cookbook_file "/tmp/jdk-7u55-linux-x64.tar.gz" do
  source "vendor/jdk-7u55-linux-x64.tar.gz"
  mode 0644
end
cookbook_file "/tmp/UnlimitedJCEPolicyJDK7.zip" do
  source "vendor/UnlimitedJCEPolicyJDK7.zip"
  mode 0644
end
