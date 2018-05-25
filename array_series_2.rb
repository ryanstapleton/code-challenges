# Product Of Maximums Of Array (Array Series #2)

# Task
# Given an array/list [] of integers , Find the product of the k maximal numbers.

# Notes
# Array/list size is at least 3 .
# Array/list's numbers Will be mixture of positives , negatives and zeros
# Repeatition of numbers in the array/list could occur.

# Input >> Output Examples
# 1- maxProduct ({4, 3, 5}, 2) ==>  return (20)
# Explanation:
# Since the size (k) equal 2 , then the subsequence of size 2 whose gives product of maxima is 5 * 4 = 20

# 2- maxProduct ({8, 10 , 9, 7}, 3) ==>  return (720)
# Explanation:
# Since the size (k) equal 3 , then the subsequence of size 2 whose gives product of maxima is 8 * 9 * 10 = 720

# 3- maxProduct ({10, 8, 3, 2, 1, 4, 10}, 5) ==> return (9600)
# Explanation:
# Since the size (k) equal 5 , then the subsequence of size 2 whose gives product of maxima is 10 * 10 * 8 * 4 * 3 = 9600

# 4- maxProduct ({-4, -27, -15, -6, -1}, 2) ==> return (4)
# Explanation:
# Since the size (k) equal 2 , then the subsequence of size 2 whose gives product of maxima is -4 * -1 = 4

# 5- maxProduct ({10, 3, -1, -27} , 3)  return (-30)
# Explanation:
# Since the size (k) equal 3 , then the subsequence of size 2 whose gives product of maxima is 10 * 3 * -1 = -30

def max_product(numbers, size)
  numbers.sort[-size..-1].inject(:*) 
end 

# Also 
# def max_product(numbers, size)
#   numbers.max(size).reduce(:*) 
# end 