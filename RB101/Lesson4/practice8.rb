# capitalize each word from the title

words = "the flinstones rock"

p words.split.each {|word| word.capitalize! }.join(' ')

# this exercise is a good example of method chaining. Here we have a string with multiple words and we need to capitalize each word from the string. 

# first we use the method split in order to divide each word individually. each returns an array containing each word from the string. Since we now have an array, we can use each to iterate through the array. in the block we are using |word| to represent each word from the array of words. We then apply the method capitalize! to each word. once each finishes iterating trhough the array of words we are left with an array that looks like this: [TheFlintstonesRock] next we chain the method join to the return value of each in order to turn the array into a string. note we need to pass the argument (' ') to join in order to separate the words. 

