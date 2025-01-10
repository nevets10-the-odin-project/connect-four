# frozen_string_literal: true

require_relative '../lib/game'
require_relative '../lib/player'

describe Game do
  subject(:game) { described_class.new }
  let(:board) { double('board') }
  let(:player) { double('player') }

  describe '#initialize' do
    # Nothing to test
  end

  describe '#take_turn' do
    # Puts which player's turn it is.
    # Waits for player input
    # Validates input
    # Updates board
    # Checks for game over
  end

  describe '#validate_input' do
    # Confirms that the player input is valid
  end

  describe 'game_over?' do
    # Checks if a player has won or if it's a tie
  end
end
