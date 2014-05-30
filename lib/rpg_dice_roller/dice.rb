module RpgDiceRoller
  # Represents a die with a variable number of sides.
  # The die can be instated with a number of sides,
  # represented by a number, or by a d-notation string.
  #--
  # However, it might be better to move the regex dice processing
  # to another part, and just have the dice take in a hash.
  #++
  # == Example:
  #   die = RpgDiceRoller::Dice.new(20)
  #   die.sides   #=> 20
  #   die.roll    #=> random number between 1 and 20
  class Dice
    # The number of faces the die has.
    attr_accessor :sides

    # Creates a die.
    # The number of sides can be inputted as a number or as a string of the format "{x}d{x}".
    def initialize(sides)
      if sides.is_a? Fixnum
        @sides = sides
      else
        match_array = /(\d*)d(\d+)/.match(sides)
        @sides = match_array[2].to_i
      end
    end

    # Rolls the dice.
    # This returns a random number between 1 and @sides.
    def roll
      rand(sides) + 1
    end
  end
end
