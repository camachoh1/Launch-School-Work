# how can you make this work wihout begin/end/until? we want to handle the loop gracefully instead of racing an exeption or going into an infinite loop. 

# def factors(number)
#   divisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   factors
# end


def factors(number)
  divisor = number
  factors = []
  loop do 
    if number % divisor == 0
      factors << number / divisor
    end   
      divisor -= 1
      break if divisor == 0
  end 
  factors
end

puts factors(12)

# notes: my first instinct when trying to change the structure of the original code was utilizing a while loop. after refactoring the program, I noticed that the program was only outputing the first factor. This was because I did not set the condition on the while loop properly. 

# I then decided to use a basic loop and a conditional statement which gave me the expected results. now, although it gave me the expected result without exceptions or crashing into an infinite loop, the code still could be condensed/simplified further. 

# LS answer solves this by using a while loop and setting the condition on the loop the following way:

# def factors(number)
#   divisor = number
#   factors = []

#   while divisor > 0 
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1 
#     break if divisor == 0
#   end 
#   factors
# end

# puts factors (12)

# Orginally I had set my while loop in the following way: 

# number % divisor == 0

# which would not allow the program to iterate through the other factors. because obviously the first divisor will always result in a factor meaning it wont leave any reminder. 

#bonus questions: 

# what is the purpose of the number % divisor == 0?

# it checks wether the integer is a factor meaning after the division it does not leave any reminder. 

# what is the purpose of the second-to-las line in the method ( the factors before the method's end)? 

# it gives us the return value of the operation inside the method. Without it, our method would return nil. 

#LS explanation: this is what the actual rerturn value from the method. Recall that without an explicit return statement in the code, the return value of the method is the las statement executed. if we omitted this line, the code would execute, but the return value of the method would be nil. 

