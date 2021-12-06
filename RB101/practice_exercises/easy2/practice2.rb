# build a program that ask the user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet. 

# note 1 squatre meter == 10.7639 square feet.

#do not worry about validating the input at this time. 

def converter
  puts "Please enter the length of the room in meters: "
  length = gets.chomp.to_f
  puts "Please enter the width of the room in meters: "
  width = gets.chomp.to_f

  square_meters = (length * width).round(2)
  square_feet = (square_meters * 10.7639).round(2)

  puts "Thank you!"
  puts "Calculating..."
  sleep(3)
  
  puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."
end

converter 

# my approach: I first requested the user to input the values for length and width I then assigned those values to the variables length and width. In order to calculate the square meters, I then multiplied length and with used Integer#round(2) to round the numbers to the nearest value. Then multiplied the square meters by 10.7639 which is the conversion value for square feet. I didnt use a constant variable to define square feet which I should've done in order to keep the code clean in case I need to use that value in the fute again. 

# after calculating the square feet, I displayed a thank you message and a calculating... followed by a sleep set to 3 seconds for dramatic effect. 
# in order to display the results to the user, I used string interpolation to interpolate the values of square meters and square feet to the message. 