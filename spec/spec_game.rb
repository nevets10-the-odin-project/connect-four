# frozen_string_literal: true

require_relative '../lib/game'
require_relative '../lib/player'

describe Game do
  subject(:game) { described_class.new }
  let(:board) { double('board') }
  let(:player) { double('player') }

  context '#initialize' do
    # Nothing to test
  end

  context '#take_turn' do
    # Puts which player's turn it is.
    # Waits for player input
    # Validates input
    # Updates board
    # Checks for game over
  end

  context '#validate_input' do
    # Confirms that the player input is valid
  end

  context 'game_over?' do
    # Checks if a player has won or if it's a tie
  end
end
