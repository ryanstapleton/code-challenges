class Game
  def initialize
    @options = %w(rock paper scissors lizard spock)
    @win_conditions = {
      'rock' => ['lizard', 'scissors'],
      'paper' => ['spock', 'rock'],
      'scissors' => ['paper', 'lizard'],
      'spock' => ['rock', 'scissors'],
      'lizard' => ['paper', 'spock']
    }
  end

  def roll
    puts "Pick one: rock paper scissors lizard spock "
    choice = ''

    loop do
      choice = gets.chomp.downcase
      break if validated?(choice, @options)
    end

    @player1_roll = choice
    @player2_roll = @options.shuffle.last
  end

  def evaluate
    set_outcome
    if @player1_roll == @player2_roll
      @outcome << "Tie"
    elsif @win_conditions[@player1_roll].include?(@player2_roll)
      @outcome << "P1 Wins!"
    elsif @win_conditions[@player2_roll].include?(@player1_roll)
      @outcome << "P2 Wins!"
    end
    puts @outcome
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

    def set_outcome
      @outcome = "P1: #{@player1_roll.capitalize} \n   vs \nP2: #{@player2_roll.capitalize}\n"
    end
end

rpssl = Game.new
rpssl.roll
rpssl.evaluate