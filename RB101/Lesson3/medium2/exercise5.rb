# Depending on a method to modify its arguments can be tricky: 

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end 

puts my_string = "pumpkins"
puts my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string,my_array)

puts "my string looks like this now #{my_string}"
puts "my array looks like this now #{my_array}"

# Whether the above "coincidentally" does what we think we wanted "depends" upon what is going on inside of the method. 

#how can we change this code to make the result easier to predict and easier for the next programmer to mantain?

# the solution to the code avobe is much clearer because of the combination of the return on line 5 and the reassignment on line 10. The comma-separated arguments passed to return cause not_so_tricky_methods to return an array containing two elements. The string and the array that a_string_param and an_array_param reference. 

# on line 10, my_string and my_array are reassigned to the return value of the invocation of not_so_tricky_method using multiple assignment. The comma here ( on the left side of the assignment) tells ruby to assign these two variables to elements in an array based on their respective positions. So if you use multiple assignment with two variables on the left side the first variable will be assigned to the first element in the array, and the second variable to the second element in the array. 

