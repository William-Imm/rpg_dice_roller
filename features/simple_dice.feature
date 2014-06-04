Feature: Simple dice rolling
At the most basic level, a dice rolling program should be able to, well, roll dice.
If this feature doesn't work, then the whole module might as well be unusable.

Scenario Outline: Rolling one die
  Given I have a die of "<type>"
  When I roll the die
  Then I should see a result above or equal to "<lower>"
  And I should see a result below or equal to "<upper>"

  Examples:
    | type | lower | upper |
    | d4 | 1 | 4 |
    | d6 | 1 | 6 |
    | d8 | 1 | 8 |
    | d10 | 1 | 10 |
    | d12 | 1 | 12 |
    | d20 | 1 | 20 |

Scenario: Die with static modifier
  Given I have a die of "1d20+5"
  When I check the modifier of the die
  Then I should see a modifier of "5"
  
Scenario Outline: Die rolled multiple times
  Given I have a die of "<type>"
  When I roll the die
  Then the die should be been rolled "<times>" times
  
  Examples:
    | type | times |
    | 1d20 | 1 |
    | 2d8 | 2 |
    | 3d4 | 3 |
    | 4d6 | 4 |
    | d10 | 1 |
