
require_relative 'player'
require_relative 'question'

player1 = Player.new("Player 1")
question1 = Question.new 

puts "#{player1.name}: #{question1.question}"