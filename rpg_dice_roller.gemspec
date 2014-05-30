# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rpg_dice_roller/version'

Gem::Specification.new do |spec|
  spec.name          = "rpg_dice_roller"
  spec.version       = RpgDiceRoller::VERSION
  spec.authors       = ["William Immendorf"]
  spec.email         = ["will.immendorf@gmail.com"]
  spec.summary       = %q{A dice roller intended for use with role-playing games, includes hit confirmation and critical handling.}
  spec.description   = %q{A dice roller intended for use with a wide berth of role-playing games. 
                          This includes hit confirmation, critical/explosion rules, grouping dice, and other such features.}
  spec.homepage      = "https://github.com/William-Imm/rpg_dice_roller"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "cucumber", "~> 1.3.15"
  spec.add_development_dependency "rspec", "~> 2.14.1"
end
