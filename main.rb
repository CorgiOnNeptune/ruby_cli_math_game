require './GameState'
require './Player'
require './Question'

# player1 = Player.new('Andy')
# player2 = Player.new('Chucky')

puts 'Player 1, what is your name?'
player1 = Player.new

puts 'Player 2, what is your name?'
player2 = Player.new

game = GameState.new(player1, player2)
game.start_game

until game.ended
  question = Question.new
  question.ask_question(game.current_player.name)

  game.current_player.lose_life unless question.check_answer(gets.chomp)

  puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"

  if game.current_player.lives.zero?
    game.end_game
    player1 = nil
    player2 = nil
  else
    game.next_turn
  end
end
