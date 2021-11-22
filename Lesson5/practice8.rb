# using the each method, write some code to output all of the vowels from the strings. 

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = "aeiou"

hsh.each_value do |value|
  value.each do |str|
    str.chars.each do |char|
      puts char if vowels.include?(char)
    end    
  end  
end

# My answer with some help from LS:

# I used the each_value method because in this case we our only focus are the values. 
# I first iterate through each value and called the each method again on the values (arrays of strings). Now, I have access to the individual strings, I then call chars on the strings to create an array of characters.I then call the method each to iterate through every character in that colection. Create a condition to print the characters if the character is included in 'aeiou' if this condition is met the characters get output to the string. note that we are using each on every iteration meaning the return value for this whole operation is the original array. 