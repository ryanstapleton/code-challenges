class Bob 
  def self.talk(tell)
    if tell.end_with?('!')
      puts "Bob: 'Whoa, chill out!'"
    elsif tell.end_with?('?')
      puts "Bob: 'Sure.'"
    elsif tell.empty?
      puts "Bob: 'Fine. Be that way!'"
    else
      puts "Bob: 'Whatever.'"
    end
  end
end

puts "\n\nBob is a lackadaisical teenager. \n"
print "Tell Bob something: "

loop do
  tell = gets.chomp

  Bob.talk(tell)

  print "Ask something else? (y/n) "
  yn = ''
  loop do
    yn = gets.chomp.downcase
    if yn == 'n' || 'y'
      break
    else
      puts "Y or N"
    end
  end
  if yn == 'n'
    break
  else
    print "\nTell Bob something else: "
  end
end