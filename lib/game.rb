require_relative 'player'
require_relative 'board'

class Game
  attr_accessor :players, :player_selection, :current_player, :board

  def initialize
    @players = [Player.new('X'), Player.new('O')]
    @current_player = 0
    @board = Board.new
  end

  def player_input
    loop do
      user_input = gets.chomp
      validated_input = validate_input(user_input.to_i) if user_input.match?(/^\d+$/)
      return validated_input - 1 if validated_input

      puts 'Number must be from 1 to 7.'
    end
  end

  def validate_input(input)
    input if input.between?(1, 7)
  end

  def game_over?
    return true if @board.full?

    column_win = @board.four_in_a_column?(@players[current_player].symbol)
    row_win = @board.four_in_a_row?(@player_selection, @players[current_player].symbol)
    diag_win = @board.four_in_a_diagonal?(@player_selection, @players[current_player].symbol)

    return true if column_win || row_win || diag_win

    false
  end

  def play
    loop do
      system 'clear -x'
      board.print_board
      puts "    It's #{players[current_player].symbol}'s turn!"
      @player_selection = player_input
      board.update_board(@player_selection, players[current_player].symbol)
      return if game_over?

      @current_player >= 1 ? @current_player = 0 : @current_player += 1
    end
  end
end
