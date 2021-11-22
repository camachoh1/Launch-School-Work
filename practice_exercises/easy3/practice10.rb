# write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards. 

def palindromic_number?(num)
  num.digits.join.to_i == num
end 

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

# my approach for this problem involved using the method digits since it returns an array of digits but in the reversed order. I then used join to put the digits back together into a string then transformed the string to an integer. To finally compared the reversed number with the regular number within the method. 

#LS answer is very straight forward, simply turning the method into a string. They actually used the method we created in the previous lesson. 

def palindromic_number?(number)
  palindrome?(number.to_s)
end

# my approach involved turning the number into a string in order to compare it. now, I did reverse the number before turning it into a string. 
    