def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ['pumpkins']
tricky_method_two(my_string,my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# as you can see, we have achieved the opposite effect from our last example. 

#we are still passing in the same two string and array arguments. That is, in both cases, the method attempts to change the strng from "pumpkins" to "pumpkinsrutabaga" and add "rutabaga to the array. 

# despite the similarity of the results inside the method definition, the results outside the method definition are the opposite. 

#as before, the explanation is all about what Ruby does with the local variables when we change the object it points to. Does it create a new local variable? Or is it able to just modify the existing object?

# with the array#= assignment, our literal ['pumpkins', 'rutabaga'] array is a new object, and we are assigning it to the local variable an_array_param. 

