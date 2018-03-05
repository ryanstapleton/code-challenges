s1 = 'GAGCCTACTAACGGGAT'
s2 = 'CATCGTAATGACGGCCT'

def hamming_difference str1, str2
  differences = 0
  positions = {}

  (str1.length).times do |iterator|
    unless str1[iterator] == str2[iterator]
      differences += 1
      positions.merge!("#{iterator}" => "#{str2[iterator]}")
    end
  end

  puts "Differences: #{differences}"
  puts "Changes: #{positions}"
end

hamming_difference(s1, s2)