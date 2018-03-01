class GuessingGame

  def initialize
    @guess_pool = (1..25).to_a
    @guess_count = 1
    @guess = Random.new.rand(1..25)
  end

  def welcome
    puts "This is the guessing game. Pick a number between 1 and 25. I will guess your number."
  end

  def evaluate 
    puts "Is your number #{@guess}? (y/n)"
    choice = ""

    loop do
      choice = gets.chomp.downcase
      break if validated?(choice, ['y', 'n'])
    end

    if choice == 'y'
      done
    else
      puts 'Is your number higher or lower?'
      loop do
        choice = gets.chomp.downcase
        break if validated?(choice, ['higher', 'lower'])
      end
      if choice == 'higher'
        @guess_pool.delete_if {|item| item <= @guess}
      else
        @guess_pool.delete_if {|item| item >= @guess}
      end
      again
    end
  end

  def again
    @guess_count = @guess_count + 1
    p @guess_pool
    @guess = Random.new.rand(@guess_pool[0]..@guess_pool[-1])
    evaluate
  end

  def done
    puts 'Game Over!'
    puts "I guessed it in #{@guess_count} times."
  end

  private

    def validated? selection, valid_options
      validated = false
        if valid_options.include?(selection)
          validated = true
        else
          puts "That's not a valid option ..."
        end
      validated
    end
end

game = GuessingGame.new
game.welcome
game.evaluate