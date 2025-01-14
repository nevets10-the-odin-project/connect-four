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

  def four_in_a_column?(symbol)
    board_arr.each do |column|
      return true if column.last(4).all?(symbol)
    end
  end
end
