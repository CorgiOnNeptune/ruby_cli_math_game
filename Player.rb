class Player
  attr_accessor :name
  attr_reader :lives

  def initialize
    @name = determine_player_name
    @lives = 3
  end

  def determine_player_name
    @name = gets.chomp
  end

  def lose_life
    @lives -= 1
  end
end
