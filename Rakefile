# coding: utf-8
require 'bundler/gem_tasks'
require 'cucumber'
require 'cucumber/rake/task'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = 'features --format pretty'
end

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.ruby_opts = %w(-w)
end

Rubocop::RakeTask.new

begin
  require 'yard'

  namespace :doc do
    desc 'List all undocumented methods and classes'
    task :undocumented do
      command = 'yard --list --query '
      command << '"object.docstring.blank? && '
      command << '!(object.type == :method && object.is_alias?)"'
      sh command
    end
  end

  desc 'Generate documentation'
  task(:doc) { sh 'yard' }

  desc 'Generate documentation incrementally'
  task(:redoc) { sh 'yard -c' }
rescue LoadError
  $stderr.puts 'YARD cannot be loaded. Documentation generation is disabled.'
end
