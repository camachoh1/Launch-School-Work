# what is the output of the following code?

answer = 42 

def mess_with_it(some_number)
  some_number =+ 8 
end

new_answer = mess_with_it(answer)

p answer - 8
p new_answer

# notes: my answer is this code will output 34. 
# The reason why answer outputs 34 and not 8 is because when we passed answer as argument to mess_with_it and assigned the return value of the mess_with_it to the variable new_answer, we created a new space in memory or copy of answer in which the value of answer was altered. leaving the original value of answer unnaltered. then we subtracted 8 from the original value of answer (42) giving us a result of 8. 

#important: += it's a short form for increment. while =+ its simmilar to reasignment a =+ b is simmilar to a = + b. it is storing the result in the first value and returning the new value instead. 

