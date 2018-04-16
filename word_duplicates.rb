# The main idea is to count all the occuring wordsin string. If you have string like this "The world is the best" then the result should be { 'a': 2, 'b': 1 }

# What if the string is empty ? Then the result should be empty object literal { }

def count_words(str)
  answer = Hash.new{0}
  a = str.split(" ")

  s.split("").each do |x| 
    answer[x] = s.count(x)
  end
  p answer
end

count_chars('aba')