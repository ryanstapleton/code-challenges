# Task
# Given an array/list [] of integers , Construct a product array Of same size Such That prod[i] is equal to The Product of all the elements of Arr[] except Arr[i].

# Notes
# - Array/list size is at least 2 .
# - Array/list's numbers Will be only Postives
# - Repeatition of numbers in the array/list could occur.

# Input >> Output Examples
# 1- productArray ({12,20}) ==>  return {20,12}

# Explanation:
# The first element in prod [] array 12 is the product of all array's elements except the first element
# The second element 20 is the product of all array's elements except the second element .
# 2- productArray ({1,5,2}) ==> return {10,2,5}

# Explanation:
# The first element 10 is the product of all array's elements except the first element 1
# The second element 2 is the product of all array's elements except the second element 5
# The Third element 5 is the product of all array's elements except the Third element 2.
# 3- productArray ({10,3,5,6,2}) return ==> {180,600,360,300,900}

# Explanation:
# The first element 180 is the product of all array's elements except the first element 10
# The second element 600 is the product of all array's elements except the second element 3
# The Third element 360 is the product of all array's elements except the third element 5
# The Fourth element 300 is the product of all array's elements except the fourth element 6
# Finally ,The Fifth element 900 is the product of all array's elements except the fifth element 2

require 'rspec'

def product_array(arr)
  r_arr = []
  arr.each_index do |i|
    t = arr.dup
    t.delete_at(i)
    r_arr << t.reduce(:*)
  end
  r_arr
end

# Other Solution
# def product_array(numbers)
#   prod = numbers.reduce(:*)
#   numbers.map { |x| prod / x }
# end

describe "Basic Tests:" do
  it "Calculates products correctly" do
    expect(product_array([12, 20])).to eq([20,12])
    expect(product_array([1, 5, 2])).to eq([10, 2, 5])
    expect(product_array([10, 3, 5, 6, 2])).to eq([180, 600, 360, 300, 900])
  end
end