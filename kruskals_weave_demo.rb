require 'weave_grid'
require 'kruskals'

class SimpleOverCell < OverCell

    def neighbours
        list = []
        list << north if north
        list << south if south
        list << east if east
        list << west if west
        list
    end
    
end

class PreconfiguredGrid < WeaveGrid

    def prepare_grid
        Array.new(rows) do |row|
            Array.new(columns) do |col|
                SimpleOverCell.new(row, col, self)
            end
        end
    end
end

grid = PreconfiguredGrid.new(20, 20)
state = Kruskals::State.new(grid)

grid.size.times do |i|
    row = 1 + rand(grid.rows - 2)
    col = 1 + rand(grid.columns - 2)

    state.add_crossing(grid[row, col])
end

Kruskals.on(grid, state)

filename = "mazeImages/kruskalsWeaved.png"
grid.to_png(10, 0.2).save(filename)
puts "saved to #{filename}"