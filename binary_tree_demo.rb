require 'grid'
require 'binary_tree'

grid = Grid.new(7, 36)
BinaryTree.on(grid)

puts grid

img = grid.to_png
img.save "mazeImages/binary_tree.png"