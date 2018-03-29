# Write a method that computes the running total of an array. Allow for the input of integers and strings (ie "one", "two"). Ask the user to enter "exit" when they want to exit.

# BONUS: Ask them if they want to do all the math things, and keep adding each of those to the total.  

require 'numbers_in_words'

def array_math
  the_array = Array.new
  total = 0
  first = true

  print "What math opperator? (+-/*): "
  opperator = gets.chomp

  loop do
    print "Enter a number ('exit' to quit): "
    answer = gets.chomp.downcase
    if answer == "exit"
      break
    end
    the_array << answer

    if first
      total = NumbersInWords.in_numbers(the_array.pop).to_i
    else  
      case opperator
      when '+'
        total += NumbersInWords.in_numbers(the_array.pop).to_i
      when '-'
        total -= NumbersInWords.in_numbers(the_array.pop).to_i
      when '*'
        total *= NumbersInWords.in_numbers(the_array.pop).to_i
      when '/'
        total /= NumbersInWords.in_numbers(the_array.pop).to_i
      end
    end
    first = false
    puts "Total: #{NumbersInWords.in_words(total)}"
  end
end

array_math
