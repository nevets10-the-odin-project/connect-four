# frozen_string_literal: true

require_relative '../lib/game'

describe Game do
  subject(:game) { described_class.new }
  let(:board) { double('board') }
  let(:player) { double('player') }

  describe '#initialize' do
  end

  describe '#take_turn' do
  end

  describe '#validate_input' do
  end

  describe 'game_over?' do
  end
end
