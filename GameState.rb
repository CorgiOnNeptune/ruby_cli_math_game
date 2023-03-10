class GameState
  attr_accessor :turn
  attr_reader :ended

  def initialize(player1, player2)
    @turn = 1
    @player1 = player1
    @player2 = player2
    @ended = false
  end

  def start_game
    puts "\n----- START GAME -----"
    puts "#{@player1.name} vs #{@player2.name}"
  end

  def current_player
    @turn == 1 ? @player1 : @player2
  end

  def next_turn
    puts "\n----- NEW TURN -----"
    @turn = (@turn == 1 ? 2 : 1)
  end

  def end_game
    puts "\n----- GAME OVER -----"
    determine_winner

    puts 'GG!'
    @ended = true
  end

  private

  def determine_winner
    winner = (@player1.lives.zero? ? @player2 : @player1)

    puts "#{winner.name} is the winner with #{winner.lives}/3 lives remaining!"
  end
end
