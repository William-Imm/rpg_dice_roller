module RpgDiceRoller
  class Dice
    attr_accessor :sides

    def initialize(sides)
      if sides.is_a? Fixnum
        @sides = sides
      else
        match_array = /(\d*)d(\d+)/.match(sides)
        @sides = match_array[2]
      end
    end

    def roll
      25
    end
  end
end
