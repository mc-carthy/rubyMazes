require 'hex_grid'

require 'recursive_backtracker'

grid = HexGrid.new(10, 10)

RecursiveBacktracker.on(grid)

filename = "mazeImages/hexMaze.png"
grid.to_png.save(filename)
puts "saved to #{filename}"