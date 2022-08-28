class Turn 
  attr_accessor :current_player, :last_player

  def initialize(current_player, last_player)
    @current_player = current_player
    @last_player = last_player
  end

  def new_turn(current_player, last_player)
    @current_player = last_player
    @last_player = current_player
    current_player.youre_up
  end

 


end
