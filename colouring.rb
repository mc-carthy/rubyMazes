require 'coloured_grid'

require 'binary_tree'
require 'sidewinder'
require 'aldous_broder'
require 'wilsons'
require 'hunt_and_kill'

grid = ColouredGrid.new(50, 50)
Wilsons.on(grid)

start = grid[grid.rows / 2, grid.columns / 2]

grid.distances = start.distances

filename = "mazeImages/wilsons_colorized.png"
grid.to_png.save(filename)
puts "saved to #{filename}"