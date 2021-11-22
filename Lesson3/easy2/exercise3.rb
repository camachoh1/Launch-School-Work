# we have most of Munster family in our age hash:

ages = {"Herman" => 32, "Lilly" => 30, "Grandpa" => 5843, "Eddie" => 10}

# add ages for Marilyn and Spot to the existing hash

aditional_ages = {"Marilyn" => 22, "Spot" => 237}

ages.merge!(aditional_ages)

puts ages

# my answer: .merge which is non mutating. There is also the method merge! which does mutate the caller. 

# This method allows us to merge two different hashes. 

