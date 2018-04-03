# Write a method that takes a sentence and prints it like the following: one word per line, in a rectangular frame.

# For example the sentence 'Hello World in a frame' gets printed as:

#     ************
#     * This     *
#     * is       *
#     * the      *
#     * best     *
#     * dang     *
#     * sentence *
#     * in       *
#     * the      *
#     * world!   *
#     ************


def sentence_in_a_frame(sentence)
  array = sentence.split(/ /)
  longest = array.max{ |a, b| a.length <=> b.length }.length
  stars = ""

  puts "\n"
  (longest+4).times do |line|
    stars << "*"
  end
  puts "\t" + stars

  array.each do |word|
    puts "\t* " + word + (' ' * (longest - word.length)) + " *"
  end

  puts "\t" + stars
end

print "Enter a sentence:"
answer = gets.chomp
sentence_in_a_frame(answer)
