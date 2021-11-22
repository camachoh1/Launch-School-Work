#starting with the string: 

famous_words = "seven years ago..."

#show two different ways to put the expected "Four score and" in front of it. 

puts "Four score and " + famous_words

puts famous_words.prepend('Four score and ')

puts famous_words

#notes: 

# prepend is a mutable method! 

#there is a third option using << after the string "Four score and "

# for the anwers I first used string concatenation. concatinating a string with the method famous_words.

#second I used the string method #prepend. Which receives a string as an argument and prepends it to the famus_words variables. Again, note that prepend mutates the caller. 