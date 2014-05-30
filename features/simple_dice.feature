Feature: Simple dice rolling
At the most basic level, a dice rolling program should be able to, well, roll dice.
If this feature doesn't work, then the whole module might as well be unusable.

Scenario Outline: Rolling one die
  Given I have a die of "<type>"
  When I roll the die
  Then I should see a result above "<lower>"
  And I should see a result below "<upper>"

  Examples:
    | type | lower | upper |
    | d4 | 1 | 4 |
    | d6 | 1 | 6 |
    | d8 | 1 | 8 |
    | d10 | 1 | 10 |
    | d12 | 1 | 12 |
    | d20 | 1 | 20 |
