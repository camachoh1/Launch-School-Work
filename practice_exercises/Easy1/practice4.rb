# Write a method that counts the number of occurences of each element in a given array. 

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck'
]

# my answer using a basic selection loop and outputing the result in a hash. 

# for this approach I used a basic loop and a counter to iterate through the array. 

#extracted the key value for the hash using counter to represent the current element from the iteration. In order to extract the value, I used the method count and passed the current_key variable as an argument. This method with an argument returns the count of elements equal to the object passed as an argument. 

# right before closing the method we use each to iterate trough occurrences and print out its keys and values. (vehicles and occurrences)

def count_occurrences(array)
  occurences = {}
  counter = 0

  loop do 
    break if counter == array.size
    current_key = array[counter]
    
    occurences[current_key] = array.count       (current_key)
    counter += 1
  end
  occurences.each do |k,v|
    puts "#{k} => #{v}"
  end   
end 

p count_occurrences(vehicles)


# this second approach is more elegant and compact. Here I am using uniq to create a new array containing all the unique elements in the array. Then I am using Array#each to iterate rhtough that array. Using vehicles to represent each element from the array and assign them as keys for the occurrences array. In order to extract the values, I am using the count method and I am passing vehicles as argment to it in order to count the number of times the elements are repeated. 

# Once the keys and values were assigned to the hash occurrences, I used the each method in order to iterate and print the keys and values (Vehicles and occurrences) to the screen.



def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |vehicles|
    occurrences[vehicles] = array.count(vehicles)
  end

  occurrences.each do |k,v|
    puts "#{k} => #{v}"
  end   
end     

p count_occurrences(vehicles)

# NOTE TO SELF: I was able to complete most part of this exercise on my own, I was able to identify that this solution required an iteration approach and was able to create a basic loop that selected the keys and values, I was able to find the necessary methods to solve this problem ( uniq and count) but I failed at the application of the methods, which coul've been avoided if I had taken a bit more time to read and analyze the documentation throughly. Once I saw the proper implementation of the methods, I was able to solve the problem using the two approaches immediately. So in short, I need to take my time to read through the documentation and think analyticaly. 