require 'distance_grid'

require 'binary_tree'
require 'sidewinder'
require 'aldous_broder'
require 'wilsons'
require 'hunt_and_kill'
require 'recursive_backtracker'

grid = DistanceGrid.new(7, 7)
RecursiveBacktracker.on(grid)

grid.braid(0.5)

start = grid[0, 0]
distances = start.distances

grid.distances = distances
puts grid

puts "Path from northwest corner to southeast corner"
grid.distances = distances.path_to(grid[grid.rows - 1, grid.columns - 1])
puts grid