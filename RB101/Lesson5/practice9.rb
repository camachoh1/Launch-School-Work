# Given this data structure, return a new array of the same structure but with the sub arrays being ordered alphabetically or numerically as appropiate in descending order. 

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

p( arr.map do |arrays|
  arrays.sort do |a,b|
    b <=> a
  end
end 
)

# my answer: since the problem suggested creating a new array, I used the map method to iterate through the arrays and return a new collection. Within the map block, I used the sort method with a block to reorganize the contents in descending order. 