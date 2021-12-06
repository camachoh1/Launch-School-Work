# given the hash below, modify the hash such that each member of the munster family has an additional "age_group" key that has one of the three values describing the age group of the family member is in (kid,adult or senior). Your solution should produce something like this: 

# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

# note: a kid is in the age range 0-17, an adult is in the range 18-64 and senior is aged 65+.

#Hint use range and case statements. 

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  case details['age']
  when 0...18
    details["age_group"] = "kid"
  when 18...64
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end

p munsters

# for this answer we used the each method in order to iterate trhough the hash. in the block we are using |name| to represent the keys of the munsters hash which are the names of the family members and |details| to represent the values which are the details on each family member. 

# we are also using a case statement in order to add a new category to the details based on the "age" key which is part of details(value).

# our case statement is based on the details['age'] section. 

#meaning when age is between certain ranges, we define the new key, value relationship. In this case details["age_group"] = "kid". 

{a: 1, b: 2, c: 3, d: 4, e: 5}.each do |_, num|
  plus_one = num + 1
  puts "#{num} plus 1 is #{plus_one}"
end