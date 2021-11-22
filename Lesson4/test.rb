# using a transformation loop. 

# array = ['a','b','c']
# new_hash = {}
# counter = 0

# loop do
#   break if counter == array.size

#   current_element = array[counter]
#   hash_keys = current_element
#   hash_values = counter
#   new_hash[hash_keys] = hash_values

#   counter += 1
# end   

# p new_hash

# using each_with_index

# ['a','b','c'].each_with_index do |i, index|
#   new_hash[i] = index
# end 

# p new_hash

arry = [1,2,3,4]

arry.select {|i| p i > 3}