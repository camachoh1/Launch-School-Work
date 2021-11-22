# write a method that takes two arguments, a string and a prositive integer, and prints the string as many times as the integer indicates. 

# My answer using a while loop: 

def repeat(str,num_times)
  while num_times > 0
    puts str
  break if num_times == 0
  num_times -= 1 
  end
end

# answer using times:

def repeat(str,num_times)
  num_times.times { puts str }
end


repeat("hablalo!",5)

# note that times can be used without argument in the block, and instead we can just wrtie the execution code using the str variable from the method. 