require 'spec_helper'
require './lib/board'

describe Board do

  describe 'set-up when initialized' do
    context 'with 9x9 grid' do

      it 'has 81 cells' do
        board = Board.new(9)
        board.total_cells.should eq 81
      end

      it 'has 9 unique rows' do
        board = Board.new(9)
        board.rows.should match_array [R1, R2, R3, R4, R5, R6, R7, R8, R9]
      end

    end
  end
end




# Describe Scroller do

# let(:scroller) { Scroller.new([:a, :b]) }

# describe '.new' do
#   context 'given nothing' do

#     let(:scroller) { Scroller.new }

#     it 'contains no items' do
#       scroller.items.should be_empty
#     end
#   end

#   context 'given items' do
#     it 'contains items' do
#       scroller.items.include?(:a).should be_true
#       scroller.items.include?(:b).should be_true
#     end
#   end
# end
