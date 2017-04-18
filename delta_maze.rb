require 'triangle_grid'

require 'recursive_backtracker'

grid = TriangleGrid.new(20, 30)

RecursiveBacktracker.on(grid)

filename = "mazeImages/deltaMaze.png"
grid.to_png.save(filename)
puts "saved to #{filename}"