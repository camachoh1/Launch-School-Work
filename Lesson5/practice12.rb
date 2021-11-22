# Given the following data structure, and without using the Array#to_h method, write some code that will return a hash where the key is the first item in each sub array and the value is the second item. 

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

new_hash = {}

arr.each do |sub_arr|
  new_hash[sub_arr[0]] = sub_arr[1]
  
end

p new_hash

# my answer: I iterated through the array using each then assigned each sub array position as key and values of the new_hash. since all sub arrays had 2 elements, sub_arr[0] represents the first element and sub_arr[1] the second. 