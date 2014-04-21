name             'chamber'
maintainer       'Roman Chukh'
maintainer_email 'roman.chukh@gmail.com'
license          'Apache 2.0'
description      'Set of recipes for preparing a development environment'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

depends 'build-essential'
depends 'git', '~> 4.0'

supports 'centos'
