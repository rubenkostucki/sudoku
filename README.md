game = Sudoku.new('003020600900305001001806400008102900700000008006708200002609500800203009005010300')

game.solve!

puts game.board


#A board is made of:

- 81 cells
- 9 Rows, 9 Columns
- 9 Boxes --> this is a feature of the board


#A cell is made of:
- Unique Combination of Row# and Column# ~ R1-9 + C1-9
- a unique number between 1-9

#A Row is made of:
- 9 cells (i.e.R1C1 to R1C9 or R2C1 R2C9)

#A Column is made of:
- 9 cells (i.e. C1R1 C1R9 or C9R1 C9R9)

#Game setting:
- Numbers fixed to a specific cell, given by the Game

#Player:
- Solve the Sudoku puzzle by giving each cell a number in order that each Box, Row and Column has a series of number from 1-9

- Select a number between 1-9 to go in each cell so that the 9 cells in each Row, Column and Box only has one instance of the numbers between 1-9

#find_most_common_number
#missing_number(cell)
#solve_cell(number)
