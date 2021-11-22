advice = "Few things in life are as important as house training your pet dinosaur."

advice['important']= 'urgent'

# the []= method is used to edit the contents of a string. first we need to specify the word we wish to edit ( in this case [important] ) and then in after the equals sign = add the word we wish to replace (urgent). note there is no space between the brackets and the = sign []= 
#it is a mutating method. 

puts advice 

# otra solucion seria: 

# advice.gsub!(important, urgent)

#gsub is a mutating method, 