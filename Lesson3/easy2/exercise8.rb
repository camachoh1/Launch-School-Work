# shorten the following sentence: 

advice = "Few things in life are as important as house training your pet dinosaur"

#review rhe String.slice! documentation, and use that method to make the return value : "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur."

# as a bonus, what happens if you use the #slice method instead? 

p advice.slice!(0..38)

puts advice

# My answer: my solution worked but it was very inneficient for lack of a better word. I manually counted the index numbers on he string element then used slice! with a range of (0..38). this gave me the expected result but I manually had to count characters on the sentence. 

#LS solution used slice! but they showed a very practical way to set the range of the index. They set 0 as the begginning of the range then used the method index and passed the argument ('house').
#the index method returns the index number of the element passed as it's argument. in that way they didnt have to manually count characters in the sentende, they just specified which word they wanted the range to go up to. 

# advice.slice!(0, advice.index(house)) is the same as advice.slice!(0..38)

