require 'distance_grid'

require 'binary_tree'
require 'sidewinder'

grid = DistanceGrid.new(7, 7)
Sidewinder.on(grid)

start = grid[0, 0]
distances = start.distances

grid.distances = distances
puts grid