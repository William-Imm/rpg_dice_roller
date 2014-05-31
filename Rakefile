require 'bundler/gem_tasks'
require 'cucumber'
require 'cucumber/rake/task'
require 'rdoc/task'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = 'features --format pretty'
end

RDoc::Task.new do |rdoc|
  rdoc.main = 'README.md'
  rdoc.rdoc_files.include('README.md', 'lib/**/*.rb', 'LICENSE.txt')
end

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.ruby_opts = %w(-w)
end

Rubocop::RakeTask.new
