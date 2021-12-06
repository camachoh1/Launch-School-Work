# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200. 

# for my answer I used string interpolation to impement the rand method.

  puts "Teddy is #{rand(20..200)} years old!"

# LS: answer assigned rand's value to a variable which then was interpolated to the string. 

age = rand(20..200)
puts "Teddy is #{age} years old!"

# further exploration: Modify this program to ask for the name and then print the age for that person. For an extra challenge use Teddy as the name if no name is entered. 

# for the further exploration, I decided to use a method to request input and display the answer. 
# I used an if conditional to define a default answer in case the user did not input any information. Then used string interpolation just like the original exercise to display the message with the randomly generated age. 

def teddy
  puts "Please enter a name"
  answer = gets.chomp
  answer = "Teddy" if answer.empty? 
    
  puts "#{answer} is #{rand(20..200)} years old!"
end 

teddy

