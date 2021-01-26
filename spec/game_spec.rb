require_relative '../lib/game_logic'

describe Player do
  describe 'instantiate Player class' do
    it 'creates an instance of player with two attribute values' do
      player = Player.new('kevin', 'X')
      expect(player.instance_of?(Player)).to eq(true)
    end
  end

  describe 'instantiate Player class' do
    it 'raises an error if a player is instantiated without any parameters' do
      expect { Player.new }.to raise_error
    end
  end

  describe 'instantiate Player class' do
    it 'returns the value of the @name instance variable.' do
      player = Player.new('kevin', 'X')
      expect(player.name).to eq('kevin')
    end
  end

  describe 'instantiate Player class' do
    it 'returns the value of the @symbol instance variable.' do
      player = Player.new('kevin', 'X')
      expect(player.symbol).to eq('X')
    end
  end
end

describe Board do
  let(:board) { Board.new }
  describe '#initialize' do
    it 'Creates new items for the board' do
      expect(board.board).to eql [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end
  end

  describe '#initialize instantiates .Board class' do
    it 'raises an error if a .Board is instantiated with any arguments' do
      arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
      expect { Board.new(arr) }.to raise_error
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

describe Game do
  game = Game.new
  player = Player.new('kk', 'X')
  describe 'check_win' do
    it 'first col wins' do
      board = Board.new
      board.update_board(1, 'X')
      board.update_board(4, 'X')
      board.update_board(7, 'X')
      expect(game.check_win(board.board, player)).to eq(player)
    end
  end
end

describe Game do
  game = Game.new
  player = Player.new('kk', 'X')
  describe 'check_win' do
    it 'first diagonal wins' do
      board = Board.new
      board.update_board(1, 'X')
      board.update_board(5, 'X')
      board.update_board(9, 'X')
      expect(game.check_win(board.board, player)).to eq(player)
    end
  end
end

describe Game do
  game = Game.new
  player = Player.new('kk', 'X')
  describe 'check_win' do
    it 'second row wins' do
      board = Board.new
      board.update_board(4, 'X')
      board.update_board(5, 'X')
      board.update_board(6, 'X')
      expect(game.check_win(board.board, player)).to eq(player)
    end
  end
end

describe Game do
  game = Game.new
  player = Player.new('kk', 'X')
  describe 'check_win' do
    it 'third row wins' do
      board = Board.new
      board.update_board(7, 'X')
      board.update_board(8, 'X')
      board.update_board(9, 'X')
      expect(game.check_win(board.board, player)).to eq(player)
    end
  end
end

describe Game do
  game = Game.new
  player = Player.new('kk', 'X')
  describe 'check_win' do
    it 'second diagonal wins' do
      board = Board.new
      board.update_board(3, 'X')
      board.update_board(5, 'X')
      board.update_board(7, 'X')
      expect(game.check_win(board.board, player)).to eq(player)
    end
  end
end

describe Game do
  game = Game.new
  player = Player.new('kk', 'X')
  describe 'check_win' do
    it 'second col wins' do
      board = Board.new
      board.update_board(2, 'X')
      board.update_board(5, 'X')
      board.update_board(8, 'X')
      expect(game.check_win(board.board, player)).to eq(player)
    end
  end
end

describe Game do
  game = Game.new
  player = Player.new('kk', 'X')
  describe 'check_win' do
    it 'third col wins' do
      board = Board.new
      board.update_board(3, 'X')
      board.update_board(6, 'X')
      board.update_board(9, 'X')
      expect(game.check_win(board.board, player)).to eq(player)
    end
  end
end

describe Game do
  game = Game.new
  player = Player.new('kk', 'X')
  describe 'check if there is a winner' do
    it 'x wins' do
      board = Board.new
      board.update_board(1, 'X')
      board.update_board(2, 'X')
      board.update_board(3, 'X')
      expect(game.check(game.check_win(board.board, player))).to eq(true)
    end
  end
end

describe Game do
  game = Game.new
  player = Player.new('kk', 'X')
  describe 'check if there is a winner' do
    it 'x wins' do
      board = Board.new
      board.update_board(4, 'X')
      board.update_board(2, 'X')
      board.update_board(3, 'X')
      expect(game.check(game.check_win(board.board, player))).to eq(false)
    end
  end
end
