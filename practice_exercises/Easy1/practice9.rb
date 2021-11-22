# Write a method that takes one argment, a positive integer, and returns the sum of its sigits.

# my answer: Integer#digits returns an array of digits, then I chained the method sum in order to add all of the elements on the array. 

# def sum(num)
#   num.digits.sum
# end 

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# a more "manual" approach using each

def sum(num)
  sum = 0
  str_digits = num.to_s.chars

  str_digits.each do |str_digit|
    sum += str_digit.to_i
  end
  sum
end     

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

#LS answer using map: 

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end 

# here they converted the integer into a string to then split it into an array of characters using chars. then used map to iterate through the array of characters and transform them back to integers using to_i. then added them using reduce(:+) (inject)
