require 'weave_grid'
require 'recursive_backtracker'

grid = WeaveGrid.new(20, 20)
RecursiveBacktracker.on(grid)

filename = "mazeImages/weave.png"
grid.to_png(10, 0.2).save(filename)
puts "saved to #{filename}"