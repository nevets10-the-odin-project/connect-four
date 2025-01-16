# frozen_string_literal: true

require_relative '../lib/board'

describe Board do
  context '#initialize' do
    # Nothing to test
  end

  context '#update_board' do
    # Updates board with current player's piece
    subject(:board) { described_class.new }
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
    # Checks if there's a four in a column
    subject(:board) { described_class.new }
    selected_index = 0
    player_symbol = 'X'
    other_symbol = 'O'

    it 'returns true if there are four consecutive symbols in column 0' do
      4.times do
        board.update_board(selected_index, player_symbol)
      end

      expect(board).to be_four_in_a_column(player_symbol)
    end

    it 'returns true if there are more than four consecutive symbols in column 0' do
      6.times do
        board.update_board(selected_index, player_symbol)
      end

      expect(board).to be_four_in_a_column(player_symbol)
    end

    it 'returns false if there are less than four consecutive symbols in column 0' do
      3.times do
        board.update_board(selected_index, player_symbol)
      end

      expect(board).to_not be_four_in_a_column(player_symbol)
    end

    it 'returns false if there are three consecutive symbols, a different fourth symbol, and then the original symbol' do
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
    subject(:board) { described_class.new }
    selected_index = 0
    player_symbol = 'X'
    other_symbol = 'O'

    it 'returns true if there are four consecutive symbols in a row' do
      i = 0

      while i < 7
        board.update_board(i, player_symbol)
        i += 1
      end

      expect(board).to be_four_in_a_row(selected_index, player_symbol)
    end

    it 'returns false if there are not four consecutive symbols in a row' do
      board.update_board(0, player_symbol)
      board.update_board(1, other_symbol)
      board.update_board(2, other_symbol)
      board.update_board(3, player_symbol)

      expect(board).to_not be_four_in_a_row(selected_index, player_symbol)
    end

    it 'returns true if there are four consecutive symbols in a row, but with other symbol' do
      board.update_board(0, player_symbol)
      board.update_board(1, other_symbol)
      board.update_board(2, player_symbol)
      board.update_board(3, player_symbol)
      board.update_board(4, player_symbol)
      board.update_board(5, player_symbol)
      board.update_board(6, other_symbol)

      expect(board).to_not be_four_in_a_row(selected_index, player_symbol)
    end
  end

  context '#four_in_a_diagonal?' do
    # Checks if there's a four in a row
    subject(:board) { described_class.new }
    selected_index = 0
    player_symbol = 'X'
    other_symbol = 'O'

    it 'returns true if there are four consecutive symbols in a diagonal; top left to bottom right' do
      # I don't want to think harder than I have to for test setups
      board.update_board(0, other_symbol)
      board.update_board(0, player_symbol)
      board.update_board(0, other_symbol)
      board.update_board(0, player_symbol)

      board.update_board(1, player_symbol)
      board.update_board(1, other_symbol)
      board.update_board(1, player_symbol)

      board.update_board(2, other_symbol)
      board.update_board(2, player_symbol)

      board.update_board(3, player_symbol)

      expect(board).to be_four_in_a_diagonal(selected_index, player_symbol)
    end

    it 'returns true if there are four consecutive symbols in a diagonal; top right to bottom left' do
      # I don't want to think harder than I have to for test setups
      board.update_board(3, other_symbol)
      board.update_board(3, player_symbol)
      board.update_board(3, other_symbol)
      board.update_board(3, player_symbol)

      board.update_board(2, player_symbol)
      board.update_board(2, other_symbol)
      board.update_board(2, player_symbol)

      board.update_board(1, other_symbol)
      board.update_board(1, player_symbol)

      board.update_board(0, player_symbol)

      expect(board).to be_four_in_a_diagonal(selected_index, player_symbol)
    end
  end

  context '#tie?' do
    # Check if the board is full
  end
end
