# Class of Player

class Player
  attr_reader :name, :symbol
  

  def initialize(name, symbol)
      @name   = name
      @symbol = symbol
      @winTimes = 0
  end

  def getWinnings
    @winTimes
  end

  def setWinnings
    @winTimes +=1
  end
end

# Class of Board
class Board
  attr_accessor :board
  def initialize
      @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      # @totalM = 0
  end

  def updateBoard(number, symbol)
      @board[number-1] = symbol
  end

  def displayBoard
      puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
      puts "---------"
      puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
      puts "---------"
      puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
      # @totalM += 1
  end
end

# Class of Game
class Game
  attr_accessor :draws
  def initialize
    @draws = 0
  end

  def checkWin(board, player)
    if(board[0] == board[1] && board[1] == board[2] || board[3] == board[4] && board[4] == board[5] || board[6] == board[7] && board[7]== board[8])
      player.setWinnings
      return player
    elsif(board[0] == board[3] && board[3] == board[6] || board[1] == board[4] && board[4] == board[7] || board[2] == board[5] && board[5]== board[8])
      player.setWinnings
      return player
    elsif(board[0] == board[4] && board[4] == board[8] || board[2] == board[4] && board[4] == board[6])
      player.setWinnings
      return player
    else
      return false
    end
  end

  def getDraws
    @draws
  end

  def setDraws
    @draws +=1
  end

# Check winner
  def check(gameCheckWinMethod)
    if gameCheckWinMethod != false
      puts "The winner is #{gameCheckWinMethod.name}"
      return true
    end
  end

end



 