# Write a program that will ask for user's name. The program will then greet the user. if the user writes "name!" then the computer yells back to the user. 

#my answer: I used the standard procedure of requesting user input. 
# once I got the user's input saved to the variable name, I used an if conditional along with the include? method to decide the output. 

# if the name includes the character "!" the output of the program would display the name uppercase without the "!" in order to do that, I interpolated the name variable to the output message and chained it with the methods upcase and chop to remove the "!". 

# using index selection rather than .include? its a bit more precise name[-1] == "!"

puts "what is your name?"
name = gets.chomp

if name.include?("!")
  puts "HELLO #{name.upcase.chop}. WHY ARE YOU SCREAMING?"
else
  puts "Hello #{name}"
end


# this is a cool approach using methods and ternary operators: 

def greet(name)
  puts 'Hello #{name}.'
end

def shout_greet(name)
  name.chop!
  puts 'HELLO #{name.upcase}. WHY ARE WE SCREAMING?'
end

puts 'What is your name?'
user_name = gets.chomp

user_name[-1] == '!' ? shout_greet(user_name) : greet(user_name)

