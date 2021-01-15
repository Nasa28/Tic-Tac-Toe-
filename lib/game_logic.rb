# frozen_string_literal: true

# Class of Player

class Player
  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    @win_times = 0
  end

  def winnings
    @win_times
  end

  def set_winnings
    @win_times += 1
  end
end

# Class of Board
class Board
  attr_accessor :board
  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def update_board(number, symbol)
    @board[number - 1] = symbol
  end

  def display_board
    puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts '---------'
    puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts '---------'
    puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
  end
end

# Class of Game
class Game
  attr_accessor :draws
  def initialize
    @draws = 0
  end

  def check_win(board, player)
    if board[0] == board[1] && board[1] == board[2] || board[3] == board[4] && board[4] == board[5] || board[6] == board[7] && board[7] == board[8]
      player.set_winnings
      player
    elsif board[0] == board[3] && board[3] == board[6] || board[1] == board[4] && board[4] == board[7] || board[2] == board[5] && board[5] == board[8]
      player.set_winnings
      player
    elsif board[0] == board[4] && board[4] == board[8] || board[2] == board[4] && board[4] == board[6]
      player.set_winnings
      player
    else
      false
    end
  end

  def get_draws
    @draws
  end

  def set_draws
    @draws += 1
  end

  # Check winner
  def check(check_win_meth)
    if check_win_meth != false
      puts "The winner is #{check_win_meth.name}"
      true
    end
  end
end
