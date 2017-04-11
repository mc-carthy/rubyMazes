require 'grid'
require 'aldous_broder'

grid = Grid.new(20, 20)
AldousBroder.on(grid)

#puts grid

filename = "aldous_broder.png"
grid.to_png.save(filename)
puts "saved to #{filename}"