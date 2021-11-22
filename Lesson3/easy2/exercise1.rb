# in this hash of people and their age, 

ages = {"Herman" => 32, "Lilly" => 30, "Grandpa" => 402, "Eddie" => 10}

# see if "Spot" is present. 

puts ages.include?('Spot')
puts ages.has_key?('Spot')
puts ages.has_value?('Spot')
puts ages.key?('Spot')

#my answer: ages.include?(Spot)

#LS answer: ages.key?(Spot)

# the Bonus part of the exercse asked for two different hash methods that would work just as well for this solution. 

# I found two methods, has_key? and has_value? 
#These methods return true if the object passed as an argument makes part of the hash either as key or value. 

#LS solution (.key?) is an alias for my answer #include? as well as has_key? and member?