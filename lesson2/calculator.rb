# ask user for two numbers
#ask the user for an operation to perform
#perform the operation on the two numbers
#output the result 


Kernel.puts("Welcome to Calculator!")

Kernel.puts("Please enter the first number")
num1 = gets().chomp()

Kernel.puts("Please enter the second number")
num2 = gets().chomp()

Kernel.puts("Select operation: 1) add, 2) subtract, 3) multiply, 4) divide.")
operator = Kernel.gets().chomp()

  if operator == '1'
    result = num1.to_i + num2.to_i 
  elsif operator == '2'
    result = num1.to_i - num2.to_i
  elsif operator == '3'
    result = num1.to_i * num2.to_i
  else   
    result = num1.to_f / num2.to_f 
  end 

  Kernel.puts("The result is #{result}")


