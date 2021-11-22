ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }


# anser using a selection loop 

ages_keys = ages.keys
counter = 0
youngest = {}

loop do
  break if counter == ages.size

  current_key = ages_keys[counter]
  ages_values = ages[current_key]

  if ages_values < 20 
  youngest[current_key] = ages_values
  end 

  counter += 1
end

p youngest

# answer using #select method

p ages.select { |k,v| v < 20 }

# the problem with my answers is that I am placing a criteria for selection. meaning, if someone edits the code and chages the minimum age to 22 for example, this solution would not work. 

# a more practical and elegant solution would be converting the hash into an array using values and then using the method min which returns a new array of minimum-valued elements selected from the array. 


