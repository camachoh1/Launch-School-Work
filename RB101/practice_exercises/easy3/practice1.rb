# my answer: For this answer, instead of writing 6 different input request messages, I created an array whose keys are represented with a counter and its values, the positions of each number. 

# I used a basic loop to request input and interpolated a call to the array of positions, then used the counter to iterate through the keys returning the value positions. 

# Within the same loop, I added each input into an empty array as well as incrementing the counter by one per iteration. 

# I then used an if statement to verify wether the last number appears within the first 5 elements of the array. I used index positioning and range to define the comparision criteria. 



ordinals = {1 => '1st', 2 => '2nd', 3 => '3rd', 4 => '4th', 5 => '5th', 6 => 'last'}

arr = []
counter = 1

loop do
  puts "enter the #{ordinals[counter]} number"
  number = gets.chomp.to_i
  arr << number
  counter += 1
  break if arr.size == 6
end

if arr[0..4].include?(arr[5]) 
  puts "The number #{arr[5]} appears in #{arr[0..4]}"
else
  puts "The number #{arr[5]} does not appear in #{arr[0..4]}"
end   


# LS answer:

numbers = []

puts "Enter the 1st number:"
numbers << gets.chomp.to_i
puts "Enter the 2nd number:"
numbers << gets.chomp.to_i
puts "Enter the 3rd number:"
numbers << gets.chomp.to_i
puts "Enter the 4th number:"
numbers << gets.chomp.to_i
puts "Enter the 5th number:"
numbers << gets.chomp.to_i
puts "Enter the last number:"
last_number = gets.chomp.to_i

if numbers.include? last_number
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appear in #{numbers}."
end

# here they manually wrote the messages requesting each input and stored the input directly into the empty array. the procedure was repeated until the 6th input request which they stored in a variable called last_number. then they use an if conditional to check wether the numbers array (containing input 1 to 5) includes the last number, using Array#include. 
