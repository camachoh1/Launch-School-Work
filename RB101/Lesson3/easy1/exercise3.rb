# the Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ 

numbers = [1,2,3,4,5]

#what do the following method calls do(assume we reset numbers to the original array between method calls)?

numbers.delete_at(1)
numbers.delete(1)

#answer:
#1. numbers = [1,3,4,5] This is because delete_at deletes objects based on the index.  so delte_at(1), is refering to index 1 which represents number 2.

#2. numbers = [2,3,4,5] this is because delete(1) deletes objects based on what has been passed as an argument. in this case we are passing number the number 1 to delete so it is removed from the array. 

#summary: delete_at deletes info based on the index and delete based on the object passed as argument.



