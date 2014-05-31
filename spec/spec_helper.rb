# coding: utf-8
require 'rubygems'
require 'rpg_dice_roller'
require 'rspec'

SPEC_TMP_DIR = File.expand_path('tmp', File.dirname(__FILE__))

Dir.glob("#{File.dirname(__FILE__)}/support/*.rb").each { |f| require(f) }
