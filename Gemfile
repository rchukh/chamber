source 'https://rubygems.org'

gem 'berkshelf'

# Uncomment these lines if you want to live on the Edge:
#
# group :development do
#   gem "berkshelf", github: "berkshelf/berkshelf"
#   gem "vagrant", github: "mitchellh/vagrant", tag: "v1.5.2"
# end
#
# group :plugins do
#   gem "vagrant-berkshelf", github: "berkshelf/vagrant-berkshelf"
#   gem "vagrant-omnibus", github: "schisamo/vagrant-omnibus"
# end

group :development do
  gem 'rake'
  gem 'test-kitchen'
  gem 'kitchen-vagrant'
end

group :lint do
  gem 'foodcritic', '~> 3.0'
  gem 'rubocop',    '~> 0.20.1'
end

group :unit do
  gem 'chefspec',  '~> 3.4'
  gem 'busser-bats'
  gem 'busser-minitest'
end
