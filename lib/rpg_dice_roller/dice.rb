# coding: utf-8
module RpgDiceRoller
  # Represents a die with a variable number of faces.
  # The die can be instated with a number of faces,
  # represented by a number, or by a d-notation string.
  #--
  # However, it might be better to move the regex dice processing
  # to another part, and just have the dice take in a hash.
  #++
  # == Example:
  #   die = RpgDiceRoller::Dice.new(20)
  #   die.faces   #=> 20
  #   die.roll    #=> random number between 1 and 20
  class Dice
    # The number of faces the die has.
    attr_accessor :faces

    # Creates a die.
    # The number of faces can be inputted as a number or as a string of the format "{x}d{x}".
    def initialize(faces)
      if faces.is_a? Fixnum
        @faces = faces
      else
        match_array = /(\d*)d(\d+)/.match(faces)
        @faces = match_array[2].to_i
      end
    end

    # Rolls the dice.
    # This returns a random number between 1 and @faces.
    def roll
      rand(faces) + 1
    end
  end
end
