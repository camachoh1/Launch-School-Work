
# write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer. 

# my answer: 

# right now I cant really understand why when I input an even number, I get the expected results a string of 1s and 0s representing num's value. but when I input an odd number the first string is a 0 instead of a one. 
# def stringy(num)
#   str_num = []
  
#   loop do
#     break if num == 0
    
    
#     current_num = num.even? ? 1 : 0
#     str_num << current_num
#     num -= 1
#   end
#   str_num.join

# end

# p stringy(5)

# LS answer uses the times method instead of a loop and a counter: 

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

p stringy(8)
