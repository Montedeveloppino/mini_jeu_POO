
require 'pry'
require_relative 'player'

class Game
  attr_accessor :human_player, :enemies
  
  def initialize(player)
    @human_player = HumanPlayer.new(player)
    @enemies = [Player.new("Basil"), Player.new("Theo"), Player.new("Mehdi"), Player.new("Yann")]
  end

  def kill_player(player)
    
  end
  
  def is_still_ongoing?
    if @enemies > 1 && @human_player == 1
      return true
    end
  end

  
  puts "end of file"

end

