#the following method receives two numbers as arguments, and it will act as a fibonacci calculator. it will comput the siquence until some limit is reached.

#you will face an error as soon as you run the program. What is wrong with the code?

def fib(first_num, second_num,limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1,15)
puts "result is #{result}"

# originally, the program had the limit variable set before the fib method definition. Since this is a method, due to variable scope issues, the limit variable cannot be accessed so we get undefine local variable error for "limit".

#in order to solve this, my first instict was moving the limit variable into the method. Which made the method work. Now, moving a set variable inside of the method, wont allow us to change the limit of the calculation from the utside, unless we pass the limit as an argument. Which is the solution to the problem. Allow limit to be an argument to the method. 