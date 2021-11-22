# how could the following method be simplified without changing its return vaule?

def color_valid(color)
  if color == "blue" || color == 'green'
    true
  else
    false
  end 
end

puts color_valid('green')

# answer: Delete the if condition and the else clause. In ruby everything is consider true unless declared false or nil. in this exercise, we just need to keep the || clause which declares that color 'blue' or 'green' is considered true. 
# Ruby will automatically evaluate the statements. 

# this is an example of what is reffered to as "truthiness".