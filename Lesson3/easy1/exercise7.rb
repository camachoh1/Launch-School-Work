#given the hash below

flinstones = {"Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

#turn this into an array containing only two elements. 

p flinstones.rassoc(2)

p flinstones.assoc('Barney')

# notes: 

# there are two useful methods to complete this task. Actually, both are very simmilar. assoc and ressoc. 

#assoc returns a new 2 element array consisting of the key and value pair. containing the key passed as argument. 

#ressoc is the same but it receives the value as argument. 



