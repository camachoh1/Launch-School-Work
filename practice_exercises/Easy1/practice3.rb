# write a method that takes one argument, a positive integer, and returns a list of the digits in the number:

# answer using digits to split the number into digits and chaining its return value to reverse in order to get the numbers in the right order. 

def digit_list(num)
  num.digits.reverse
end

p digit_list(5897)

# my answer transforming the number into a string then using the method split to create an array of strings representing each digit in the number then using map! to transform the strings into integers. 
def digit_list(num)
  num.to_s.split('').map! do |i|
    i.to_i
  end   
end 

p digit_list(4784)
p digit_list(12345)

# LS "Brute Force" answer: 

def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end 

# this approach uses divmod() which returns two values: the result of performing an integer division, and the remainder. For example, 12345.divmod(10) returns [1234, 5] then unshift prepends the last number from the return value of divmod to digits. 

# LS idiomatic answer: 

def digita_list(number)
  number.to_s.chars.map(&:to_i)
end 

# this approach is very simmilar to my answer second solution in which I transformed the number into a string, split it using join and then used map to create the array. 

# in this case they simply used chars instead of join to separate the digits. then used map(&:to_i) which is a short way to say:
# something.map {|char| char.to_i} Which is what I used on my answer. 