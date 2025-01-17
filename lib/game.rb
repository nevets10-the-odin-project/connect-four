require_relative 'player'
require_relative 'board'

class Game
  attr_accessor :players, :current_player, :board

  def initialize
    @players = [Player.new('X'), Player.new('O')]
    @current_player = 0
    @board = Board.new
  end

  def get_player_input
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
end
