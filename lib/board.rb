class Board
  attr_accessor :board_arr

  def initialize
    @board_arr = Array.new(42, '-')
  end

  def update_board(index, symbol)
    return if index >= board_arr.length

    @board_arr[index] = symbol
  end
end
