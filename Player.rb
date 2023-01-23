class Player
  attr_accessor :player
  attr_reader :score

  def initialize(player)
    @player = player
    @score = 0
  end

  def increase_score
    score + 1
  end
end
