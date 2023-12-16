require_relative 'player'
require_relative 'question'

class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def switch_player
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def display_scores
    puts "P1: #{@player1.score}/3 vs P2: #{@player2.score}/3"
  end

  def announce_winner
    if @player1.score == 0
      puts "Player 2 wins with a score of#{@player2.score}/3"
    else
      puts "Player 1 wins with a score of#{@player1.score}/3"   
     end
  end
  
  def play
    while @player1.score > 0 && @player2.score > 0
      question = Question.new
      puts "#{@current_player.name}: #{question.question}"

      user_answer = gets.chomp.to_i

      if user_answer == question.answer
        puts "#{@current_player.name}: YES! You are correct."
      else
        @current_player.score -= 1
        puts "#{@current_player.name}: Seriously? No!"
      end

      display_scores

      puts "----- NEW TURN -----"

      switch_player
    end
    announce_winner
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end
