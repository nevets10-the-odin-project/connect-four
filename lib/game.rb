require_relative 'player'
require_relative 'board'

class Game
  attr_accessor :players, :current_player, :board

  def initialize
    @players = [Player.new('X'), Player.new('O')]
    @current_player = 0
    @board = Board.new
  end
end
