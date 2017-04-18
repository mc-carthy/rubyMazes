require 'polar_grid'

grid = PolarGrid.new(8)

filename = "mazeImages/polarGrid.png"
grid.to_png.save(filename)

puts "saved to #{filename}"