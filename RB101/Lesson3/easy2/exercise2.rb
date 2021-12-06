# starting with this string: 

munsters_description = "The Munsters are creepy in a good way."

# conver the string in the following ways (code will be executed on original munsters_description above)


# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "The munsters are creepy in a good way."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

puts munsters_description.upcase
puts munsters_description.downcase
puts munsters_description.capitalize
puts munsters_description.capitalize.swapcase

# my answer: I didnt know how to get the first result. I got the second result onwards, using #capitalize, #downcase and #upcase. 

# swapcase was the solution for the first example. #swapcase returns a copy of the string in which the lower case characters are swapped to uppercase and the upper case to lower case. 
