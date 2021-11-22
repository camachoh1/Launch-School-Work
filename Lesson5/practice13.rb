# Given the following data structure, return a new array containing the same sub-arrays as the original but ordered logically by only taking into consideration the odd numbers they contain. 

# The sorted array should look like this:

# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

p(
  arr.map do |sub_arr|
  sub_arr.sort_by do |num|
    num[2]
  end
end
) 

# my answer:

# I decided to use map in order to return a new array. I then sorted the sub arrays using sort_by and used num[2] as criteria. Since in all of the sub arrays the odd number was located at the end. 

# LS used a slighyly different approach:

arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end