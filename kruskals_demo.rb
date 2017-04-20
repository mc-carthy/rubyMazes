require 'grid'
require 'kruskals'

grid = Grid.new(20, 20)
Kruskals.on(grid)

filename = "mazeImages/kruskals.png"
grid.to_png.save(filename)
puts "saved to #{filename}"