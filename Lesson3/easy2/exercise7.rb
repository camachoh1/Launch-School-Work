# in the previous pracice problem we added Dino to our array like this: 

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flinstones.push("Dino","Hoppy")


# We could have used either Array#concat or Array#Push to add Dino to the family.

# How can we add multiple items to our array? (Dino and Hoppy?)

#my answer: I thought the best solution was using push(Dino, Hoppy). That gave me the result that was requested. 

#LS answer used push as a solution but they did it in a different way, they chained two instances of the method one for each element that was added to the array. 

#notes: push returns the array so we can chain. Also we can just add elements directly into the array. 

#concat is another useful method that allows us to add information to an array. now this method receives the objects in the form of an array for example: 

# flintstones.concat(%w(Dinno Hoppy))
