require_relative 'player'
require_relative 'board'

class Game
  attr_accessor :players, :current_player, :board

  def initialize
    @players = [Player.new, Player.new]
    @current_player = 0
    @board = Board.new
  end
end
