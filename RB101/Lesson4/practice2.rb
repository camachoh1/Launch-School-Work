# add up all the ages from Munster family hash:

ages = {"Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237}

# my answer:

ages_values = ages.values
sum = 0

ages_values.each do |num|
  sum += num
end 

puts sum

# I decided to run the operation based on an array. So I used .values to get an array that contains all of the values in the hash. then I used a variable set to 0 (sum) and #array each to iterate add the values of the variable sum with the elements of the array. 

# LS answer: 

total_ages = 0
ages.each {|_,age| total_ages += age}
total_ages # => 6174 

# LS used #hash each instead of converting the values to a separate array (which makes more sense) they used |_,age| to bypass the keys and focus only on the values. then used the same method of assigning a value of 0 to a variable to then increment it within the block with each iteration.

# another option was using the enumerable#inject method. 

ages.values.inject(:+)

# This uses ages.values to make an array, then uses the inject method which is part of the enumerable module. the strange-looking parameter to inject is simply a variety of the inject method which says "apply the + operator to the accumulator and object parameters of inject"












