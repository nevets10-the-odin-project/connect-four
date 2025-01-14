# frozen_string_literal: true

require_relative '../lib/board'

describe Board do
  subject(:board) { described_class.new }

  context '#initialize' do
    # Nothing to test
  end

  context '#update_board' do
    # Updates board with current player's piece
    it 'inserts player symbol at given index 0' do
      selected_index = 0
      player_symbol = 'X'
      board.update_board(selected_index, player_symbol)

      result = board.board_arr[selected_index]

      expect(result).to eq(player_symbol)
    end
  end

  context '#four_in_a_row?' do
    # Checks if there's a four in a row
  end

  context '#tie?' do
    # Check if the board is full
  end
end
