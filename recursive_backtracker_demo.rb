require 'grid'
require 'recursive_backtracker'

grid = Grid.new(20, 20)
RecursiveBacktracker.on(grid)

filename = "mazeImages/recursiveBacktracker.png"
grid.to_png.save(filename)
puts "saved to #{filename}"