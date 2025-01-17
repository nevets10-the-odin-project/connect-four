# frozen_string_literal: true

require_relative '../lib/game'
require_relative '../lib/player'

describe Game do
  subject(:game) { described_class.new }
  let(:board) { double('board') }
  let(:player) { double('player') }
  error = 'Number must be from 1 to 7.'

  describe '#initialize' do
    # Nothing to test
  end

  describe '#get_player_input' do
    # Get the player's input
    context 'when player input is between 1 and 7' do
      before do
        input = '3'
        allow(game).to receive(:gets).and_return(input)
      end

      it 'stops loop and does not display error message' do
        expect(game).to_not receive(:puts).with(error)
        game.get_player_input
      end
    end

    context 'when player input is incorrect once, then correct' do
      before do
        allow(game).to receive(:gets).and_return('8', '5')
      end

      it 'completes the loop and displays error message once' do
        expect(game).to receive(:puts).with(error)
        game.get_player_input
      end
    end
  end

  describe '#validate_input' do
    # Confirms that the player input is valid
  end

  describe '#take_turn' do
    # Puts which player's turn it is.
    # Waits for player input
    # Validates input
    # Updates board
    # Checks for game over
  end

  describe 'game_over?' do
    # Checks if a player has won or if it's a tie
  end
end
