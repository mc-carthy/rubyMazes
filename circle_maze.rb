require 'polar_grid'

require 'recursive_backtracker'

grid = PolarGrid.new(8)

RecursiveBacktracker.on(grid)

filename = "mazeImages/circleMaze.png"
grid.to_png.save(filename)
puts "saved to #{filename}"