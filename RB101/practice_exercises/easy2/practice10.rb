# what will the following code print and why?

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# my answer: it will print the same values as the array1 

# when we use << on the first iteration, we were copying references og objects from array1 to array2. Both arrays now are bound to the same strings when we altered the values of the first array with a mutable method, it affected the references in array2. 

