# Write another method that returns  if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. if you wish, you may simplify things by calling the palinfrome method you wrote in the previous exercise. 

# my answer: 

#NOTE: this is a clear example of me trying to resolve a problem without really understanding it. It is important to take the time necessary yo analyze and make sure my understanding of the problem is 100% accurate. 

# Here I tried to compare the strings by spliting them into characters then compare wether they are equal or not. Including the third example that includes alpha numetic characters. In that case, I needed to delete the alpha numeric characters in order to really compare the reversed version with the regular version of the string. 


# def real_palindrome?(string)
  
#   string.downcase.split('').reverse == string.downcase.split('')
# end

# p real_palindrome?('madam')  
# p real_palindrome?('Madam')            # p(case does not matter)
# p real_palindrome?("Madam, I'm Adam")   # (only alphanumerics matter)
# p real_palindrome?('356653') 
# p real_palindrome?('356a653') 
# p real_palindrome?('123ab321') 

# LS answer:

def palindrome(string)
  string.reverse == string
end   

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

# LS discussion: 

# For this solution we made use of String#delete. #delete is an interesting method that takes arguments that sort of look like regular expressions, and then deletes everything formed by the intersection of all its arguments. 

# for our purposes, we need to remove the non-alphanumeric characters; to do that, we tell delete to delete everythng that isn't a letter or digit. We then pass the result to our original palindrome? method to determine if the cleaned up string is a palindrome. 

# More notes and thoughts: 

# I am writing this with the sole purpose to explain myself what I have just learned about #delete. This method works simmilarly to #count in certain ways. It evaluates a string and delets the characters specified in the argument. for example: a = "hello". a.delete("lo") => "Hel". One important feature is that we can make use of the carret operator (^) in order to tell delete ( and count ) to ignore cerain characters if we append the symbol before the string for example:

# b = "hola"
# b.delete("^aeiou")
# => "hl"

# so LS's approach to solve this problem was, deleting the non-alphanumeric characters(letters and numbers) and then compare the string without extra characters with a reversed version of itself. 