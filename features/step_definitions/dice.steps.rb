Given(/^I have a die of "(.*?)"$/) do |die_type|
  @die = RpgDiceRoller::Dice.new(die_type)
end

When(/^I roll the die$/) do
  @result = @die.roll
end

Then(/^I should see a result above or equal to "(.*?)"$/) do |lower|
  expect(@result).to be >= lower.to_i
end

Then(/^I should see a result below or equal to "(.*?)"$/) do |upper|
  expect(@result).to be <= upper.to_i
end
