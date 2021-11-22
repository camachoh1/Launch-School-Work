# what does the following code print out?

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# my answer:

BOB 
BOB 

# The reason why bob prints upcased twice is because the string "bob" is bound to both save_name and name. 

# analyzing the code we can see we first assign the string"bob" to name, then reasign the value of name to save_name. at this point both variables are pointing at the same string. 
# when we use a mutating method like upcase! we are altering the string as well as any other variable that is bound to it like save_name. 

#LS explanation: Assignment in ruby just assigns a reference to a variable, both name and save_name refer to the same string, bob. when you apply name.upcase!, which mutates the name in place, the value that sav_name references also changes. Thus, both name and save_name are set to equal to BOB. 