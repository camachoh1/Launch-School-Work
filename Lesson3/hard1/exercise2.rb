# what is the result of the last line in the code below?

greetings = { a: 'hi'}
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting # => "hi there"
puts greetings

# the output is { :a => "hi there"}. The reason is because informal_greeting is a reference to the original object. The line informal_greeting << ' there' was using the String#<< method, which modifies the object that called it. This means that the original object was changed, therby impacting the value in grteetings. If instead of modifiying the original object, we wanted to only modify informal_greeting but no greetings there are a couple of options: 

# we could initialize informal_greetinf with a reference to a new object containing the same value by informal_greetinf = greetings[:a].clone.

# we can use string concatenation, informal_greeting = informal_greeting + ' there', which returns a new string object instead of modifying the original object. 