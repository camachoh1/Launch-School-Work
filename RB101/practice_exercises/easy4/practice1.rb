# Write a method that takes two string as arguments, determines the longest of the two string, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths. 

def short_long_short(str1, str2)
  short = ''
  long = ''

  if str1.size > str2.size
    long << str1 
  else 
    long << str2
  end

  if str1.size < str2.size
    short << str1
  else
    short << str2  
end

  short + long + short
end 

p short_long_short('abc', 'defgh') == "abcdefghabc" 

p short_long_short('abcde', 'fgh') == "fghabcdefgh"

p short_long_short('', 'xyz') == "xyz"


def short_long_short(str1, str2)
  
  str1.size < str2.size ? short = str1 : short = str2
  str1.size > str2.size ? long = str1 : long = str2 

  short + long + short
end

p short_long_short('abc', 'defgh') == "abcdefghabc" 

p short_long_short('abcde', 'fgh') == "fghabcdefgh"

p short_long_short('', 'xyz') == "xyz"


# my answer: On my first approach I used a couple of basic if statements in order to define which is the long string and which is the short. This approach works but its lengthy and the code is very repetitive. My second approach uses ternary operators to define the long and short in a more efficient way. 

# LS solution used a very simple if/ese statement to define the long and short and concatenate the strings in a single if/else statement:

def short_long_short(str1, str2)
  if str1.length > str2.length
    str2 + str1 + str2
  else
    str1 + str2 + str1
  end
end        