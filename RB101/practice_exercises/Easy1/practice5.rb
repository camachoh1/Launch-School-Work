# write a method that takes one argument, a string, and returns a new string with the words in reverse order. 

def reverse_sentence(string)
  string.split.reverse.join(' ')
end 

p reverse_sentence("cole que?!")
