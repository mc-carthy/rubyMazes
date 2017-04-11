require 'grid'
require 'wilsons'

grid = Grid.new(20, 20)
Wilsons.on(grid)

#puts grid

filename = "mazeImages/wilsons.png"
grid.to_png.save(filename)
puts "saved to #{filename}"