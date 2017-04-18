require 'cell'

class HexCell < Cell
    attr_accessor :northeast, :northwest
    attr_accessor :southeast, :southwest

    def neighbours
        list = []
        list << northeast if northeast
        list << north if north
        list << northwest if northwest
        list << southeast if southeast
        list << south if south
        list << southwest if southwest
        list
    end
end