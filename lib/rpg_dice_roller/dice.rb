# coding: utf-8
module RpgDiceRoller
  # Represents a die with a variable number of faces.
  # The die can be instated with a number of faces,
  # represented by a number, or by a d-notation string.
  # == Example:
  #   die = RpgDiceRoller::Dice.new(20)
  #   die.faces   #=> 20
  #   die.roll    #=> random number between 1 and 20
  # @author William Immendorf
  class Dice
    # The number of faces the die has.
    attr_accessor :faces

    # Creates a die with a number of faces.
    #
    # @param faces [Number, String] the number of faces the die has. This number must be greater than 0.
    def initialize(faces)
      if faces.is_a? Fixnum
        @faces = faces
      else
        match_array = /(\d*)d(\d+)/.match(faces)
        @faces = match_array[2].to_i
      end
    end

    # Rolls the dice.
    #
    # @return [Number] a result between 1 and @faces
    def roll
      rand(faces) + 1
    end
  end
end
