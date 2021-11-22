# write a method that returns true if the string passed as an argument is a palindrome, false otherwise. For this exercise, case matters as foes punctuation and spaces. 

# my answer: I used the reverse method to create a reversed form of string, I stored the value in a variable called reversed_string, then I just used the == comparison operator  to compare reversed string with string. If reversed_string is equals to string, then we have a palindrome and the method returns true. Otherwise it will return false. 

def palindrome?(string)
  reversed_string = string.reverse

  reversed_string == string
end 

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true