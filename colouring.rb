require 'coloured_grid'

require 'binary_tree'
require 'sidewinder'

grid = ColouredGrid.new(50, 50)
Sidewinder.on(grid)

start = grid[grid.rows / 2, grid.columns / 2]

grid.distances = start.distances

filename = "mazeImages/colorized.png"
grid.to_png.save(filename)
puts "saved to #{filename}"