# frozen_string_literal: true

require_relative '../lib/game_logic'
describe Board do
  let(:board) { Board.new }
  describe '#initialize' do
    it 'Creates new items for the board' do
      expect(board.board).to eql [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end
  end
  describe '#update_board' do
    it 'Makes a movement and update board' do
      board.update_board 7, 'O'
      expect(board.board).to eql [1, 2, 3, 4, 5, 6, 'O', 8, 9]
    end
    it 'The items in the board starts with 1' do
      expect(board.board).to start_with(1)
    end

    it 'The items in the board ends with 9' do
      expect(board.board).to end_with(9)
    end
  end
end

describe Game do
  game = Game.new
  player = Player.new('kk', 'X')
  describe 'check_win' do
    it 'first row wins' do
      board = Board.new
      board.update_board(1, 'X')
      board.update_board(2, 'X')
      board.update_board(3, 'X')
      expect(game.check_win(board.board, player)).to eq(player)
    end
  end
end
