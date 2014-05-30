Given(/^I have a die of "(.*?)"$/) do |die_type|
  @die = RpgDiceRoller::Dice.new(die_type)
end

When(/^I roll the die$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see a result above "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see a result below "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end