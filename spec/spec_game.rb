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

    context 'when player inputs two incorrect values before a correct value' do
      before do
        allow(game).to receive(:gets).and_return('10', '0', '2')
      end

      it 'completes loop and displays error message twice' do
        expect(game).to receive(:puts).with(error).twice
        game.get_player_input
      end
    end
  end

  describe '#validate_input' do
    # Confirms that the player input is valid
    context 'when given a valid input as argument' do
      it 'returns valid input' do
        input = 1
        result = game.validate_input(input)
        expect(result).to eq(1)
      end
    end

    context 'when given an invalid input as argument' do
      it 'returns nil' do
        input = 8
        result = game.validate_input(input)
        expect(result).to be_nil
      end
    end
  end

  describe 'game_over?' do
    # Checks if a player has won or if it's a tie
    context 'returns false when there are still moves and no winner' do
      before do
        allow(board).to receive(:four_in_a_column?).and_return(false)
        allow(board).to receive(:four_in_a_row?).and_return(false)
        allow(board).to receive(:four_in_a_diagonal?).and_return(false)
        allow(board).to receive(:full?).and_return(false)
        game.player_input = 2
        game.board = board
      end

      it 'returns false' do
        result = game.game_over?
        expect(result).to be(false)
      end
    end

    context 'returns true when there is a tie' do
      before do
        allow(board).to receive(:four_in_a_column?).and_return(false)
        allow(board).to receive(:four_in_a_row?).and_return(false)
        allow(board).to receive(:four_in_a_diagonal?).and_return(false)
        allow(board).to receive(:full?).and_return(true)
        game.player_input = 2
        game.board = board
      end

      it 'returns true' do
        result = game.game_over?
        expect(result).to be(true)
      end
    end
  end

  describe '#take_turn' do
    # Puts which player's turn it is.
    # Waits for player input
    # Validates input
    # Updates board
    # Checks for game over
  end
end
