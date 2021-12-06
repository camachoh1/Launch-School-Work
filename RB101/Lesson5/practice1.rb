# how would you order this array of number strings by descending numeric value?


arr = ['10', '11', '9', '7', '8']

new_order = arr.sort do |a,b|
  b.to_i <=> a.to_i
end 

p new_order

# => ["11", "10", "9", "8", "7"]

# I dont understand why the return value shows on IRB but not when I append p to the operation. 



