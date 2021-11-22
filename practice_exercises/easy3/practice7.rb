#write a method that returns an array that contains every other element of an array that is passed in as an argument. The values in the returned list should be those values that are in the 1sth, 3rd,5th and so on elements of the argment array. 

# my answer: Since the exercise requires to print out the values located in odd number positions (1st,3rd,5th, etc...) by counting the index numbers, we realize that all of the odd number positions, are located on even number index. So I used a basic loop with a counter to iterate through the arrays and only select the elements located in even counts of the counter. Counter is representing index value per iteration. 

def oddities(array)
  counter = 0
  odd_elements = []
  
  loop do
    break if counter == array.size
    odd_elements << array[counter] if counter.even?
    counter += 1
  end
  odd_elements
end     

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []