#write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: adition, subtraction, product, quotient, remainder and power.

# this is a very basic approach and in my opinion a bit ugly and redundant. it creates a method to prompt the messages. first request input then manually set up and display the operations using the prompt method.

def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number:")
first_number = gets.chomp.to_f
prompt("Enter the second number:")
second_number = gets.chomp.to_f

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
prompt("#{first_number} ** #{second_number} = #{(first_number**second_number).round}")



# this approach is more elegant. Uses an array of operatiors and then iterates through it using each. finally the operations are performed using inject and passing operation which represents each operator from the array. 

#my initial instinct was trying something like this but I didnt figure out the proper way to create the array of operators. The best way to do it is using the short form for array %w. 

operations = %w(+ - * / % ** )

operations.each do |operation|
  puts "#{first_number} #{operation} #{second_number} = #{[first_number,second_number].inject(operation)}"
end 

