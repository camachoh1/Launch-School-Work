# in other practice problems, we have looked at how the scope of variables affects the modification of one "layer" when they are passed to another. 

# to drive home the salients aspects of variable scope and modification of one scope by another, consider the following similar sets of code. 

# what will be printed by each of these code groups?

# A)

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end 

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# the method mess_with_vars is using = to reasign the variables vaule. as we have seen in the previous exercises, re assignment is non mutating. Therefore the output will be one, two three unchanged.

#B 

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end 

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# here the we have a simmilar case. instead of re-asigning variables, we are alrering the string assigned to each variable. here we can also expect the same output since again, assignments is not mutable. we are changing the values of the variables referenced by one, two and three from mess_with_vars but we are not altering the values of the variables outside the method. 

# C)

def mess_with_vars(one, two,three)
  one.gsub!("one", "two")
  two.gsub!("two","three")
  three.gsub!("three", "one")
end 

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# this case we are using gsub! which is a mutating method. meaning it will alter the original value of the variable. both one inside mess_with_vars and one outside of the method are pointing at the same object in memory. 

# the method gsub! receives two arguments the pattern and the replacement. meaning we need to specify the object we want to alter and the object that we are using as replacement. based on this we can see that one is being replaced to two, two to three and three to one. 

# the output will be one is two, two is: three and three is: one. 


