# write a function named xor that takes two argments, and returns true if exactly one of its arguments is truthy, false otherwise. Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&


# my answer: 

def xor?(num1,num2)
   if num1 == false && num2 == true
    true
  elsif num1 == true && num2 == false
    true 
  else 
    false
  end
end



p xor?(5.even?, 4.odd?)

# I used a very straight forward approach. 
#Using a basic if statement to check the conditions of what is considered true and what is considered false on this method. 

# LS shows the same answer as mine in a more condensed and idiomatic way: 

def xor?(value1,value2)
  !!((value1 && !value2) || (value2 && !value1))
end 

# another way to approach this problem: 

def xor?(value1,value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end 

#LS discussion: 

# This implementation is straightforward; it simply returns true if exactly one of the values is truthy; otherwise, it returns false. The explicit false return isn't actually necessary since return true if value2 && !value1 returns nil if the condition is falsey. However, methods whose name ends in a ? should usually return the explicit true and false values. 

