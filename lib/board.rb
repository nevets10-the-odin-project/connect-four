class Board
  attr_accessor :board_arr

  def initialize
    @board_arr = Array.new(42, '-')
  end

  def update_board(index, symbol)
    @board_arr[index] = symbol
  end
end
