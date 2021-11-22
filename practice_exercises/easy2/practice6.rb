# print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line. 

# my answer:

(1..99).each { |i| puts i if i.odd? }

# LS solution: 

value = 1
while value <= 99
  puts value
  value += 2
end 

# This solution simply takes a very basic approach of counting up to 1 to 99 by 2's and printing each value. 

