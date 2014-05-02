source "https://api.berkshelf.com"

metadata

cookbook 'build-essential'
cookbook 'yum-epel'
cookbook 'git'

group 'development' do
    cookbook 'java'
    cookbook 'java_ext', git: 'https://github.com/fewbytes-cookbooks/java_ext', branch: 'master'

    cookbook 'postgresql'
    cookbook 'database'

    cookbook 'maven'
end
