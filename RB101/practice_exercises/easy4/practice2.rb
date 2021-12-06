# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number and ends with st, nd, rd, th. as appropiate for that number. 

# new centuries begin in years that end 01. so the years 1901-2000 comprise the 20th century. 

  def century(year)
    century = year / 100 + 1 
    century -= 1 if year % 100 == 0
    century.to_s + century_suffix(century)
  end
  
  def century_suffix(century)
    return 'th' if [11,12,13].include?(century % 100)
    last_digit = century %10

    case last_digit
    when 1 then 'st'
    when 2 then 'nd'
    when 3 then 'nd'
    else 'th'
    end
  end


p century(2000) 
p century(2001) 
p century(1965) 
century(256) 
century(5) 
century(10103) 
century(1052) 
century(1127) 
century(11201)