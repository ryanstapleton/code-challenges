# Implement a program that translates from English to Pig Latin.
# Pig Latin is a made-up children's language that's intended to be confusing. It obeys a few simple rules (below), but when it's spoken quickly it's really difficult for non-children (and non-native speakers) to understand.

# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.

class String

  def to_pig_latin
    phrase = self.split()

    phrase.map! do |word|
      case word
      when /\b[aeiouAEIOU]/
        "#{word}ay".downcase
      when /((?i:(?![aeiou])[a-z])*)(.*)/
        "#{$2}#{$1}ay".downcase
      end
    end

    phrase.first.capitalize!
    p phrase.join(' ')
  end

end

print "Enter a phrase to convert to pig latin: "
answer = gets.chomp

answer.to_pig_latin