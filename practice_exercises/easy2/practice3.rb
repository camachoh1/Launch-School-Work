#create a simple tip calculator. The program should prompt for a bill amount and tip rate. The program must compute the tip and then display both the tip and the total amount of the bill. 

puts "==> Please enter the bill amount: "
bill = gets.chomp.to_f
puts "please enter the tip percentage: "
percentage = gets.chomp.to_f / 100 

tip_amount = (bill * percentage).round(2)
total = (tip_amount + bill).round(2)

puts "Thank you!"
puts "The tip is $#{tip_amount}"
puts "The total is $#{total}"

# I used a very straight forward approach. requested the bill amount and percentage. I assigned the percentage value to a variable. To calculate the percentage value in decimal I used gets.chomp to get the user's input which I transformed into a floating number using to_f then I divided the number by 100. Meaning the variable percentage would always return a dacimal value. To calculate the tip amount I multiplied the bill by the percentage variable, rounded it using round(2) calculated the total bill by adding the tip amount by the bill amount. 


