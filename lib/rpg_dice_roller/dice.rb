module RpgDiceRoller
  class Dice
    attr_accessor :sides

    def initialize(sides)
      if sides.is_a? Fixnum
        @sides = sides
      else
        match_array = /(\d*)d(\d+)/.match(sides)
        @sides = match_array[2].to_i
      end
    end

    def roll
      rand(sides) + 1
    end
  end
end
