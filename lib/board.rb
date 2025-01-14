class Board
  attr_accessor :board_arr

  def initialize
    @board_arr = Array.new(7, [])
  end

  def update_board(index, symbol)
    return if index > 6
    return if board_arr[index].length >= 7

    @board_arr[index] << symbol

    @board_arr[index].last
  end
end
