# what would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# my answer: [1,2,3] 

# I was wrong. Uniq does not mutate the caller, in order for my ansswer to be correct the problem should've used uniq! instead. 




