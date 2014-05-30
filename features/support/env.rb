require 'rubygems'
begin
  require 'spork'
rescue LoadError
  # rubocop:disable Documentation
  module Spork
    def self.prefork
      yield
    end

    def self.each_run
      yield
    end
  end
  # rubocop:enable Documentation
end

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However,
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.

end

Spork.each_run do
  # This code will be run each time you run your specs.
  require 'rpg_dice_roller'
end
