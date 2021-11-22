# given this nested hash, figure out the total age of just the male members of the family: 

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

male_ages = 0 
munsters.each do |k,v|
  if v["gender"] == "male"
    male_ages += v["age"]
  end
end

p male_ages

#LS answer: 

total_male_age = 0
munsters.each_value do |details|
  total_male_age += details["age"] if details["gender"] == "male"
end