require 'active_support/all'
class Player
  attr_accessor :name, :score 
  
  def initialize(name)
    @name = name
    @score = 3
  end

end

player1 = Player.new("Player 1")
player1.score -= 1
puts (player1.score)