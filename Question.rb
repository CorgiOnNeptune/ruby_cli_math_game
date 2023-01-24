class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def ask_question(player_name)
    puts "#{player_name}: What does #{@num1} plus #{@num2} equal?"
    print '> '
  end

  def check_answer(player_answer)
    if player_answer.to_i == @answer
      puts "\nCorrect!"
      true
    else
      puts "\nNope! #{@answer} was the correct answer."
      false
    end
  end

  private

  attr_reader :answer
end
