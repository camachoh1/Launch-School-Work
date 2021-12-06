# will the following method have an effect on the munster's hash?

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

puts mess_with_demographics(munsters)

p munsters

#notes: it does, it has to do with object mutablity. simmilar to the previous exercise we can see that an object is passed to a method in this case we can see that on line 11 and 12 we are using the method []= to change information from the hash. []= is a mutable object meaning the original munster's hash gets permanently mutated by the method. 

# LS explanation: Remember that in Ruby, what gets passed to a method isn't the value of the object. Under the hood, Ruby passes the obfect_id of each argument to the method. The method stores these object_id's internally in locally scoped (private to te method) variables (named per the method definition's paramenter list).

# demo_hash starts off pointint to the munsters hash. His program could wind up replacing that in some other object id and the hash's data would be safe. 

#in this case, the program does not reassign demo_hash -- it just uses it as-is. So the actual hash object that is being mess with inside of the method IS the me munster's hash. 