flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
new_hash = {}
counter = 0

flintstones.each_with_index do |element, index|
  new_hash[element] = index
end 

p new_hash

loop do
  break if counter == flintstones.size

  current_element = flintstones[counter]
  current_key = current_element
  current_value = counter
  new_hash[current_key] = current_value
  
  counter += 1
end 

p new_hash