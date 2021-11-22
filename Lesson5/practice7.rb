# Given the following code, what would be the final values of a and b? 

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

# my answer: arr[4,[1,8]] a = 4 b = [1,8]

# LS answer: a = 2 b = [3,8]

# this is because when we ran this code arr[0] += 2 we werent referencing a. we were instead modifying the array. In effect we are assigning a new object at that index of the array so that instead of arr[0] containing a it now contains 4.

# the value of b is changed because b is an array and we are modifying that array by assigning a new value at index 0 of that array. 

