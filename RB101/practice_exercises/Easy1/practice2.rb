# write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value. 

# my answer using modulo operation to verify if num is odd.

def is_odd?(int)
  int % 2 == 1
end

p is_odd?(-3)

# my answer using odd? method. 

def is_odd?(int)
  int.odd?
end

p is_odd?(2)