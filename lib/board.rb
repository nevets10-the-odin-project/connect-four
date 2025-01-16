class Board
  attr_accessor :board_arr

  def initialize
    @board_arr = build_board
  end

  def build_board
    board = []
    7.times do
      board << []
    end
    board
  end

  def update_board(index, symbol)
    return if index > 6
    return if board_arr[index].length >= 7

    @board_arr[index] << symbol

    @board_arr[index].last
  end

  def four_in_a_column?(symbol)
    board_arr.each do |column|
      next if column.length < 4
      return true if column.last(4).all?(symbol)
    end
    false
  end

  def four_in_a_row?(cur_col_index, symbol)
    row_index = board_arr[cur_col_index].index(board_arr[cur_col_index].last)

    row = []

    ((cur_col_index - 3)..(cur_col_index + 3)).each do |col_index|
      next if col_index < 0 || col_index >= board_arr.length

      row << board_arr[col_index][row_index]
    end

    row.join('').match?("#{symbol}#{symbol}#{symbol}#{symbol}")
  end

  # def four_in_a_diagonal?(row_index, symbol)
  #   diagonal = []

  #   ((row_index - 3)..(row_index + 3)).each do |col_index|
  #     next if col_index < 0 || col_index >= board_arr.length

  #     diagonal << board_arr[col_index][row_index]
  #   end

  #   diagonal.join('').match?("#{symbol}#{symbol}#{symbol}#{symbol}")
  # end
end
