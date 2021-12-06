# if we build an array like this: 

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# we will end up with a nested array 

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

# make this into an un-nested array. 

p flintstones.flatten! 

# I used flatten! which is a method that helps us un-nest an array. notice that there is flatten (which does not muttate the caller) and flatten! (which does.)