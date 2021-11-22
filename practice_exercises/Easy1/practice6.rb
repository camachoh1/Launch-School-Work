# write a method that takes one argument, a string containing one or more words, and returns the given sting with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present. 

# my answer:

# I used string#split in order to break the sentence into an array of words. Using the return value of split, I chained the method map in order to iterate through the array and transform I used an if conditional to transform the string based on the criteria: if word.size > 5. This way if a word whose size is greater than 5 it will be reversed using the method chars to create an array of characters that get reorganized (reversed in this case) using the reverse method this will give me an array of reversed characters, then I use the method join in order to transform the array into a string. 

# def reverse_words(string)
#   reversed_sentence = string.split(' ').map do |word|
#     if word.size >= 5
#       word.chars.reverse.join('')
#     else
#       word   
#     end
#   end
#   reversed_sentence.join(' ')  
# end 

# p reverse_words("cole que")
# p reverse_words("Buenos dias coleto!")

# LS answer: 

# this approach is definitely cleaner than using an if conditional to create the transformation criteria. Also note, that they used each in order to iterate rathen than transforming using map. 



def reverse_words(string)
  reversed_words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    reversed_words << word 
  end 
  reversed_words.join(' ')
end     

p reverse_words("cole que")
p reverse_words("Buenos dias coleto!")

# interesting approach utilizing each with object as well as a ternary operator to define transformation criteria: 

def reverse_words(str)
  str.split.each_with_object([]) { |word, arr| word.size >= 5 ? arr << word.reverse : arr << word }.join(' ')
end