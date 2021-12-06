# Given the following data structure use a combination of methods, including either the select or reject method to return a new array identical in structure to the original but containing only the integers that are multiples of 3 

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# my answer: 

# since the problem demanded a new array I used map in order to return a new collection. I then called the select method on each sub array and used i % 3 == 0 as selection criteria.

p(
  arr.map do |sub_arr|
  sub_arr.select do |i|
    i % 3 == 0
  end
end
)     