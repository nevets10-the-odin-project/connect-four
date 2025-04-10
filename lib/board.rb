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
    row_index = board_arr[cur_col_index].index(board_arr[cur_col_index].last) || 0
    row = []

    ((cur_col_index - 3)..(cur_col_index + 3)).each do |col_index|
      next if col_index < 0 || col_index >= board_arr.length

      row << board_arr[col_index][row_index]
    end

    row.join('').match?("#{symbol}#{symbol}#{symbol}#{symbol}")
  end

  def four_in_a_diagonal?(cur_col_index, symbol)
    column = board_arr[cur_col_index]
    row_index = column.length - 1

    diag1 = []
    diag1_row_tracker = row_index + 3

    diag2 = []
    diag2_row_tracker = row_index - 3

    ((cur_col_index - 3)..(cur_col_index + 3)).each do |col_index|
      next if col_index >= board_arr.length

      value1 = if diag1_row_tracker.negative? || col_index.negative?
                 nil
               else
                 board_arr[col_index][diag1_row_tracker]
               end

      value2 = if diag2_row_tracker.negative? || col_index.negative?
                 nil
               else
                 board_arr[col_index][diag2_row_tracker]
               end

      diag1 << value1
      diag2 << value2

      diag1_row_tracker -= 1
      diag2_row_tracker += 1
    end

    result1 = diag1.join('').match?("#{symbol}#{symbol}#{symbol}#{symbol}")
    result2 = diag2.join('').match?("#{symbol}#{symbol}#{symbol}#{symbol}")
    result1 || result2
  end

  def full?
    columns = board_arr.map { |column| column.length == 6 }

    columns.all?(true)
  end

  def tied?(cur_col_index, player_symbol)
    return unless full?

    column_win = four_in_a_column?(player_symbol)
    row_win = four_in_a_row?(cur_col_index, player_symbol)
    diag_win = four_in_a_diagonal?(cur_col_index, player_symbol)

    return true unless column_win || row_win || diag_win

    false
  end

  def print_board
    # Print the board
    puts '  1  2  3  4  5  6  7'
    (0..5).reverse_each do |row_index|
      print '|'
      board_arr.each do |column|
        value = column[row_index] || '-'
        print " #{value} "
      end
      puts '|'
    end
  end
end
