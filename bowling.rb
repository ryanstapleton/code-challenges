# Bowling

# Scoring Bowling
# The game consists of 10 frames. A frame is composed of one or two ball throws with 10 pins standing at frame initialization. There are three cases for the tabulation of a frame.

# An open frame is where a score of less than 10 is recorded for the frame. In this case the score for the frame is the number of pins knocked down.

# A spare is where all ten pins are knocked down by the second throw. The total value of a spare is 10 plus the number of pins knocked down in their next throw.

# A strike is where all ten pins are knocked down by the first throw. The total value of a strike is 10 plus the number of pins knocked down in the next two throws. If a strike is immediately followed by a second strike, then the value of the first strike cannot be determined until the ball is thrown one more time.

# Here is a three frame example:

# Frame 1	Frame 2	Frame 3
# X (strike)	5/ (spare)	9 0 (open frame)
# Frame 1 is (10 + 5 + 5) = 20

# Frame 2 is (5 + 5 + 9) = 19

# Frame 3 is (9 + 0) = 9

# This means the current running total is 48.

# The tenth frame in the game is a special case. If someone throws a strike or a spare then they get a fill ball. Fill balls exist to calculate the total of the 10th frame. Scoring a strike or spare on the fill ball does not give the player more fill balls. The total value of the 10th frame is the total number of pins knocked down.

# For a tenth frame of X1/ (strike and a spare), the total value is 20.

# For a tenth frame of XXX (three strikes), the total value is 30.

class Game
  attr_accessor :score, :record

  def initialize
    @score = 0
    @record = []
  end

  def roll
    @frame = rand(0..10)
    record.
    update_score
  end

  private 
    def update_score
      @score += @frame
    end
end
