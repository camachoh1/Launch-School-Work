# build a program that displays when the user will retire and how many years she has to work till retirement

puts "What is your age?"
age = gets.chomp.to_i
puts "At what age wold you like to retire?"
retirement_age = gets.chomp.to_i

work_years = retirement_age - age 
current_year = Time.now.year 
retirement_year = current_year + retirement_age

puts "It's 2021. you will retire in #{retirement_year}"
puts "You have only #{work_years} years of work to go!"

# using Time.now I can get the current date, this method returns a Time object. 
