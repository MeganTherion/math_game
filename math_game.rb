require_relative 'player'

require_relative 'question'
# require './player_2'

class Math_game
  attr_accessor :player1, :player2, :current_player

  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @current_player = @player1

  end

  def player_swap
    if (current_player == player1)
      @current_player = player2
    elsif
      (current_player == player2)
      @current_player = player1
    else
      "error"
    end
  end

  def game_runner
    while (@player1.alive && @player2.alive)
      puts "Okay, #{current_player.name}, you're up!!"
      @new_question = Question.new
      puts @new_question.question
      input = gets.chomp.to_i
      judgement(input)
      player_swap
    end
    puts "#{current_player.name} wins! Their score is #{current_player.lives}"
    puts " xxx G A M E  O V E R xxx"
  end

  def judgement(answer)
    if (@new_question.answer) == answer
      puts "Correct! You stay alive...for now"
      puts "Lives left: #{current_player.lives}/3"
      else 
        current_player.lives -= 1
        puts "Oops! the answer was #{@new_question.answer}. One life down..."
        puts "Lives left: #{current_player.lives}/3"
      end
  end
end

