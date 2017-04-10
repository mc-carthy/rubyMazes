require 'grid'
require 'sidewinder'

grid = Grid.new(7, 36)
Sidewinder.on(grid)

puts grid

img = grid.to_png
img.save "sidewinder.png"