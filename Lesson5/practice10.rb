#Given the follwing data structure and without modifiying the original array, use the map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1. 

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do|hsh|

    incremented_hsh = {}

  hsh.each do |key,value|
    incremented_hsh[key] = value += 1
  end
  p incremented_hsh
end      


#LS discussion: Here map is iterating through the array. On each iteration it is creating a new hash ( incremented_hash ) and then iterating through the hsh object for that iteration in order to add key-value pairs to this hash using the original keys but values incremented by 1. The outer block then returns this incrementes_hash to map which uses it to transform each element in the array. 
