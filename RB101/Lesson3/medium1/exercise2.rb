#the result of the following statement will be an error: 

# puts "The value of 40 + 2 is" + (40 + 2)
puts "The value of 40 + 2 is #{40 + 2 }"
puts "the value of 40 + 2 is " + (40 + 2).to_s

#why is this and what are the two possible ways to fix this?

# here we are trying to add integers to a string. This will give us a no implicit conversion error. In order to solve this we need to use string interpolation so we can perform the addition from within the string. 

# the other way to fix this is converting the numbers into strings using to_s as seen on answer 2. 