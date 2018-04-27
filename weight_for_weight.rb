# My friend John and I are members of the "Fat to Fit Club (FFC)". John is worried because each month a list with the weights of members is published and each month he is the last on the list which means he is the heaviest.

# I am the one who establishes the list so I told him: "Don't worry any more, I will modify the order of the list". It was decided to attribute a "weight" to numbers. The weight of a number will be from now on the sum of its digits.

# For example 99 will have "weight" 18, 100 will have "weight" 1 so in the list 100 will come before 99. Given a string with the weights of FFC members in normal order can you give this string ordered by "weights" of these numbers?

# Example:
# "56 65 74 100 99 68 86 180 90" ordered by numbers weights becomes: "100 180 90 56 65 74 68 86 99"

# When two numbers have the same "weight", let us class them as if they were strings and not numbers: 100 is before 180 because its "weight" (1) is less than the one of 180 (9) and 180 is before 90 since, having the same "weight" (9) it comes before as a string.

# All numbers in the list are positive numbers and the list can be empty.

# Notes
# it may happen that the input string have leading, trailing whitespaces and more than a unique whitespace between two consecutive numbers
# Don't modify the input
# For C: The result is freed.

def order_weight(strng)
  totals = Hash.new
  final_order = ""
  
  p original_order = strng.strip.split(/[\s]+/)
  p original_order.group_by{ |e| e }.select { |k, v| v.size > 1 }.map(&:first,:last.count )

  original_order.each do |num|
    totals[num.to_i] = num.split("").map{|n| n.to_i}.sum
  end

  totals.sort_by{|a,b| b}.each{|pair| final_order << pair[0].to_s + " "}
  final_order.strip
end





# Repl.it ruminations
strng = "2000 11 11 56 65 74 100 99 68 86 180 90"
p separated_weights = strng.strip.split(/[\s]+/).map!{|e| e.to_i}

summed_value_of = Hash.new
final_array = Array.new
result = String.new

separated_weights.each do |num|
  summed_value_of[num] = num.digits.sum
end

p summed_value_of

separated_weights.each do |weight|
  final_array << weight if final_array.empty?
  
  final_array.each_with_index do |item, index|
    if (summed_value_of[weight] == summed_value_of[item])
      if weight.to_s < item.to_s
        final_array.insert(weight, index)
      elsif weight.to_s > item.to_s
        final_array.insert(weight, (index + 1))
      else
        final_array.insert(weight, index)
      end
    elsif summed_value_of[weight] < summed_value_of[item]
      final_array.insert(weight, index)
    end
  end
end

p final_array

# totals.sort_by{|a,b| b}.each{|pair| result << pair[0].to_s + " "}
# result.strip


# take each element, find it's weighted value in the Hash
# compare the weighted value to the weighted value of the existing values in the array
# put the value in the array where its less than the next value
# [2, 8, 11]
