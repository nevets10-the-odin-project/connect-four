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

      result = board.update_board(selected_index, player_symbol)

      expect(result).to eq(player_symbol)
    end

    it 'returns nil when index is outside of board array length' do
      selected_index = 8
      player_symbol = 'X'

      result = board.update_board(selected_index, player_symbol)

      expect(result).to eq(nil)
    end

    it 'returns nil when column is already full' do
      selected_index = 0
      player_symbol = 'X'

      7.times do
        board.update_board(selected_index, player_symbol)
      end

      result = board.update_board(selected_index, player_symbol)

      expect(result).to eq(nil)
    end
  end

  context '#four_in_a_column?' do
    # Checks if there's a four in a row
    it 'returns true if there are four consecutive symbols in column 0' do
      selected_index = 0
      player_symbol = 'X'

      4.times do
        board.update_board(selected_index, player_symbol)
      end

      expect(board).to be_four_in_a_column(player_symbol)
    end

    it 'returns true if there are more than four consecutive symbols in column 0' do
      selected_index = 0
      player_symbol = 'X'

      6.times do
        board.update_board(selected_index, player_symbol)
      end

      expect(board).to be_four_in_a_column(player_symbol)
    end

    it 'returns false if there are less than four consecutive symbols in column 0' do
      selected_index = 0
      player_symbol = 'X'

      3.times do
        board.update_board(selected_index, player_symbol)
      end

      expect(board).to_not be_four_in_a_column(player_symbol)
    end

    it 'returns false if there are three consecutive symbols, a different fourth symbol, and then the original symbol' do
      selected_index = 0
      player_symbol = 'X'
      other_symbol = 'O'

      3.times do
        board.update_board(selected_index, player_symbol)
      end

      board.update_board(selected_index, other_symbol)
      board.update_board(selected_index, player_symbol)

      expect(board).to_not be_four_in_a_column(player_symbol)
    end
  end

  context '#four_in_a_row?' do
    # Checks if there's a four in a row
  end

  context '#four_in_a_diagonal?' do
    # Checks if there's a four in a row
  end

  context '#tie?' do
    # Check if the board is full
  end
end
