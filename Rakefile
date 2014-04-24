require 'rspec/core/rake_task'

# Style tests. Rubocop and Foodcritic
namespace :style do
  require 'foodcritic'
  require 'rubocop/rake_task'

  desc 'Run Ruby style checks'
  Rubocop::RakeTask.new(:ruby)

  desc 'Run Chef style checks'
  FoodCritic::Rake::LintTask.new(:chef) do |t|
    t.options = {
      fail_tags: ['any']
    }
  end
end

desc 'Run all style checks'
task style: ['style:chef', 'style:ruby']

# Rspec and ChefSpec
desc "Run ChefSpec examples"
RSpec::Core::RakeTask.new(:spec)

# Integration tests. Kitchen.ci
namespace :integration do
  require 'kitchen'
  desc 'Run Test Kitchen with Vagrant'
  task :vagrant do
    Kitchen.logger = Kitchen.default_file_logger
    Kitchen::Config.new.instances.each do |instance|
      instance.test(:always)
    end
  end
end

# Default
task default: ['style', 'spec', 'integration:vagrant']
