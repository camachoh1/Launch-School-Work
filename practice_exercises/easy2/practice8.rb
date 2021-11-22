# write a program that ask the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all the numbers between 1 and the entered integer. 


def sum(num)
  total = 0
  1.upto(num).inject(:+)
end 

def pro(num)
  total = 1
  1.upto(num).inject(:*)
end


loop do   
  number = nil
  operation = nil 

  loop do
    puts "Please enter an integer greater than 0"
    number = gets.chomp.to_i
    break if number == number.to_s.to_i && number > 0
    puts "invalid input. Please try again."
  end 

  loop do
    puts "Please enter 's' to compute the sum, 'p' to compute the product."
    operation = gets.chomp
    break if operation == 's' || operation == 'p'
    puts "Invalid input. Please try again."
  end 
    
  if operation == 's'
    puts "The sum of the integers between 1 and #{number} is #{sum(number)}."
  elsif
    operation == 'p'
    puts "The product of the integers between 1 and #{number} is #{pro(number)}."
  end
  break
end   










