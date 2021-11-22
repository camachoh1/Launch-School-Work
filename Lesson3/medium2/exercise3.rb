# let's call a method, and pass both a string and an array as arguments and see how even though they are treated in the same way by Ruby the results can be different. 

#study the following code and state what will be displayed and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = 'pumpkins'
my_array = ["pumpkins"]
puts tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# this code outputs: 

# punpkins for the my_string and [pumpkins, rutabaga] for my array. the reason is object mutability again. += is not a mutating method while << is. 

# further explanation by LS: the += operation is re-assignment and creates a new string object. the reference to this new object is assigned to a_strin_param. The local variable a_string_param now points to "pumpkinsrutabaga", not "pumpkins". it has been re-assigned by the string += operation. this means that a_string_param and my_string no longer point to the same object. 

# with the array, one array object can have any number of elements. When we attach an aditional element to an array using the << operator, Ruby simply keeps using the same object that was passed in, and appends the new elemnt to it. 

# so, because the local variable an_array_param still points to the original object, the local variables and an_array_param are still pointint at the same objec, and we see the results of what happen to the array "outside" of the method. 