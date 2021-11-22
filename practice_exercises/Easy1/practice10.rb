# write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. if the boolean is true, the bonus should be half of the salary. if the boolean is false, the bonus should be 0. 

# for my answer I used a basic if statement. 

def calculate_bonus(num, boolean)
  bonus = nil

  if boolean  
    bonus = num / 2
  else
    bonus = 0
  end
  bonus
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

#LS answer used a ternary operatior (which I should get more used to implement in my solutions)

def calculate_bonus(salary,bonus)
  bonus ? (salary / 2 ) : 0
end 

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

