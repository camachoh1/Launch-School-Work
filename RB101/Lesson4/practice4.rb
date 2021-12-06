# find the index of the first name that starts with "Be" in the following array. 

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# my answer:

flintstones.each_with_index do |i,index|
  if i.include?("Be")
  p index 
  end   
end

# I decided to use each_with_index in order to search through the array and return the index number for the element that starts with "be". 
# using an if statement to set the condition. 

# LS answer: 

flintstones.index {|name| name[0,2] == "Be" }

# this solution is very simmilar to mine, but instead of using each_with_index, they used index and used name[0,2] (meaning from index 0, show 2 characters ) == "Be". In this way, index would iterate through the array elements and analyze the first two characters. if the two characters match the criteria index, will return the index number. 

