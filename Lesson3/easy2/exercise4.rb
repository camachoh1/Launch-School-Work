# see if the name "Dino" appears in the string below:

advice = "Few things in life ar as important as house training your pet dinosaur."

puts advice.match?('Dino')
puts advice.include?('Dino')

# my answer: I used #include? which gave me the result I was expecting. it returned false since Dino is not part of the string. 

#LS answer used #match? which as per the documentation, returna a matchdata object (or nil ) based on self and the given pattern. in little words returns true if 'Dino' is part of the string or false if it isnt. LS said match? its not a perfect solution, as it would match any substring with Dino in it.

