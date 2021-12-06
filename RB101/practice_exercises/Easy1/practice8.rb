# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and all the numbers will be positive integers. Your result shold also be an integer.

# my answer: I used array#sum in order to add up all the numbers in the array then divided the return value of sum by the number of elements in the array using Array#size. 
# I decided to assign the result of the operation to a variable named total_average which will let me access just the integer value result of the operation. 

def average(array)
  total_average = array.sum.to_f / array.size.to_f
  total_average
end 

puts average([3,5,4,6])
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])

#LS answer: this approach uses Enumerable#reduce(aka inject), which combines all elements of the given array by applying a binary operation. This operation is specified by a block or symbol for this solution they used a block but they could've also used a symbol like this: numbers.reduce(:+). 

# once the sum of integers was complete, they divide the result of the sum by the number of elements in the array using count. 

def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end