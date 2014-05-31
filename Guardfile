# coding: utf-8
guard :bundler do
  watch('Gemfile')
  watch(/^.+\.gemspec/)
end

group :test_and_refactor, halt_on_fail: true do
  guard :cucumber  do
    watch(%r{^features/.+\.feature$})
    watch(%r{^features/support/.+$})          { 'features' }
    watch(%r{^features/step_definitions/(.+)_steps\.rb$}) { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'features' }
    watch(%r{^lib/(.+)\.rb$})     { 'features' }
  end

  guard :rspec do
    watch(%r{^spec/.+_spec\.rb$})
    watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
    watch('spec/spec_helper.rb')  { "spec" }
  end

  guard :rubocop do
    watch(%r{.+\.rb$})
    watch('Rakefile')
    watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
    watch(/^.+\.gemspec/)
  end
end
