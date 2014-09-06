name             'chamber'
maintainer       'Roman Chukh'
maintainer_email 'roman.chukh@gmail.com'
license          'Apache 2.0'
description      'Set of recipes for preparing a development environment'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.5'

recipe 'default', 'Currently does nothing'
recipe 'jdk', 'Installs and configures Oracle JDK 7'
recipe 'postgresql', 'Installs and configures PostgreSQL'
recipe 'maven', 'Installs Maven 3'
recipe 'tomcat', 'Installs Tomcat 7'
recipe 'solr', 'Installs Solr'

supports 'centos'

depends 'chef-sugar'
depends 'build-essential', '~> 2.0.6'
depends 'git', '~> 4.0'
depends 'java', '~> 1.27'
depends 'java_ext'
depends 'postgresql', '~> 3.4'
depends 'database', '~> 2.3.0'
depends 'maven', '~> 1.1'
depends 'tomcat', '~> 0.1'
depends 'nodejs', '~> 2.1'

depends 'chamber-solr', '0.1.1'