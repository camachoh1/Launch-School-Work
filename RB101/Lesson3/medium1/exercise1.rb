# For this problem, write a one-line program that creates the following output with the subsequesnt line indented one space to the right: 

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

10.times{|i| puts (" " * i) + "the flinstones rock!"}

#notes: For this problem, I was able to figure out that #times was the best method in order to print the string multiple times on the screen. 

# in my reasoning, I thoght that applying the method #center with an argument of 1 at the end of the string would create the indentation needed. That clearly didnt work, also there are no specific built in methods that are used for indentation. 

# the answer provided by LS uses string concatenation in this way: 

# puts (" " * i) + string. 

# note that here they are using * which I would normaly think of as multipy, in this case though I learned that * is actually a string method (String*integer) whose function is to return a string containing the copies of self. for example: 

# "ja" * 3 => "jajaja".

# in the solution for this exercise, we are using the method times to print the string 10 times. inside of the block, we are concatenaning a space for each iteration of times. Instead of using an integer to denote the number of spaces, we are using i which represents the numbers of iterations. 

# so whith each iteration, the space added is being multiplied by the value of the previous space.

# The Flintstones Rock! 
#  The Flintstones Rock! 
#   The Flintstones Rock!