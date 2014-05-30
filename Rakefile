require 'bundler/gem_tasks'
require 'cucumber'
require 'cucumber/rake/task'
require 'rdoc/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = 'features --format pretty'
end

RDoc::Task.new do |rdoc|
    rdoc.main = 'README.md'
    rdoc.rdoc_files.include('README.md', 'lib/**/*.rb', 'LICENSE.txt')
end