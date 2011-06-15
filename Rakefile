puts "\n ** RiverGlide.com - flow without friction **\n"

ENV[ 'MINIMUM_RUBY_VERSION' ] = '1.8.7'

require './rake/required_audits'
desc "Make sure your environment is ready"
task :environment_ready => [ 
  :you_need_the_right_ruby_version, 
  :you_need_our_dependency_manager, 
  :you_need_to_install_any_dependencies
]

begin
  require 'bundler'
  Bundler::GemHelper.install_tasks
rescue NameError => e
  puts "This problem should get sorted out once you've completed the above instructions:\n" + e.message
end

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "Versionary #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require './rake/testing_tasks/check_internals_with_rspec'
desc "Checks the environment and runs all tests"
task :default => [
  :environment_ready, 
  :spec 
]
