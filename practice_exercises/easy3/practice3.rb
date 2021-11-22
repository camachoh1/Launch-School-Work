# write a program that will ask th user for an input of a word or multiple words and give back the number of characters. spaces should not be counted as characters. 

#my answer: I used the method split with no argument in order to create an array of characters with no spaces, then used join to turn that array of characters into a string of characters with no spaces and finally used size in order to count the characters in that string.

# these are not mutable methods so the original string is left intact. 

puts "Please write a word or multiple words: "
words = gets.chomp

p words

num_chars = words.split.join.size

puts "There are #{num_chars} characters in #{words}"

# LS answer: they used a single method to get rid of spaces, delete(' '). then chained size to the return value of delete. simmilar approach but they used one less method and did not convert the strinf into an array. 

print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."
