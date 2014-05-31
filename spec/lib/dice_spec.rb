# coding: utf-8
require 'spec_helper'

describe RpgDiceRoller::Dice do
  it 'can be rolled to produce a result between 1 and the number of faces' do
    die = RpgDiceRoller::Dice.new(20)
    result = die.roll
    expect(result).to be >= 1
    expect(result).to be <= 20
  end

  it 'can take a number or a formatted string when instated' do
    die = RpgDiceRoller::Dice.new(10)
    expect(die.faces).to eq(10)
    die = RpgDiceRoller::Dice.new('1d12')
    expect(die.faces).to eq(12)
  end
end
