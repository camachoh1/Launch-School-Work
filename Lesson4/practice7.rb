# what happens when we modify an array while we are iterating over it? what would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# on the first example, the output is 1,3. 

# the answer is a bit confusing and sort of counter intuitive. But it makes sense once we consider the way each works on a collection. 

#each performs iteration based on the idex number. 
# in the first example index 0 ( integer 1 from the array) gets passed to the block. 
# the number 1 then gets out put to the screen and then removed by numbers.shift(1), 

#at this point, numbers looks like this numbers = [2,3,4] now the idex numbers are reasigned to fit the new version of the array. so index 0 is 2 and index 1 is 3. 

# in order to continue, each now performs the iteration to index 1 in the new array, index 1 is integer 3. 

# which then gets output to the screen. Continuing the iteration, numbers.shift(1) now removes the first element of the numbers array leaving us with numbers = [3,4]. 

# the next iteration would be on idex number 2 but at this point, our current array only has two elements which correspond to index 0 and 1. at this point, the operation stops and the only elements output to the screen are 1 and 3. 

# the second example is simpler to understand. 
# pop will remove the last item on the collection. 
# for the first iteration, it will print number which represent the elements of the array ordered by index. So it first will print number 1 to the screen, then numbers.pop(1) will remove the last element from the collection numbers now looks like this: numbers = [1,2,3]. 

# the process repeats, now printing index 1 which represents number 2 then numbers.pop(1) removes the last element from the current array leaving: numbers = [1,2]. next iteration would be on index 2, at this point the operation stops because the index number does not exist in the current array. 