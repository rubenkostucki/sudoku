class Board

  attr_reader :total_cells, :rows

  def initialize(grid_number)
    @total_cells = grid_number ** 2
    @rows = [R1, R2, R3, R4, R5, R6, R7, R8, R9]
  end

end