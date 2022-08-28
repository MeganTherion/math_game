class Player
  attr_accessor :name, :lives, :active
  
  def initialize
    puts "Hey sug, what's your name?"
    @name = gets.chomp
    @lives = 3
  end


  def youre_up
    puts "OK, #{@name}, you're up!"
  end

  def alive
    @lives > 0
  end

  def livesLeft
    puts "#{@name} has #{:lives}/3 lives left"
  end

end
