source "https://api.berkshelf.com"

metadata

cookbook 'chef-sugar'

cookbook 'build-essential'
cookbook 'yum-epel'
cookbook 'git'

group 'development' do
    cookbook 'java'
    cookbook 'java_ext', git: 'https://github.com/fewbytes-cookbooks/java_ext', branch: 'master'

    cookbook 'postgresql'
    cookbook 'database'

    cookbook 'maven'
    cookbook 'tomcat', git: 'https://github.com/rchukh/chef-tomcat', branch: 'master'
    cookbook 'nodejs', git: 'https://github.com/mdxp/nodejs-cookbook.git', branch: 'master'
    cookbook 'chamber-solr', git: 'https://github.com/rchukh/chamber-solr', branch: 'master'
end
