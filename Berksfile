source "https://api.berkshelf.com"

metadata

# WORKAROUND [CENTOS]: Using dev version as it contains fix for rhel environments
cookbook 'build-essential', git: "https://github.com/opscode-cookbooks/build-essential.git", branch: "master"
cookbook 'yum-epel'
cookbook 'git'

group 'development' do
    cookbook "java"
    cookbook "java_ext", git: "https://github.com/fewbytes-cookbooks/java_ext", branch: "master"

    # WORKAROUND [CENTOS]: Using custom repository until the following issue is fixed: https://github.com/hw-cookbooks/postgresql/issues/94
    #cookbook 'postgresql'
    cookbook 'postgresql', git: "https://github.com/javornikolov/postgresql.git", branch: "COOK-4095"
    cookbook 'database'
end
