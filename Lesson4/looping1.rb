# in the example below, we want to select all 'g' characters out of a string. You'll notice that this is just a basic loop with one main addition: the if statement. 

alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = ''
counter = 0 # <-- counter 

loop do # <-- Loop 
  current_char = alphabet[counter] # <-- way to retrieve current value 

  if current_char == 'g' # <-- criteria to determine which elements are selected. 
     selected_chars << current_char # appends current_char into the selected_chars string
  end 
  
  counter += 1 # <-- counter 
  break if counter == alphabet.size # <-- way to exit the loop. 
end 

selected_chars # => 'g'

# The if condition is what determines which values are selected and which ones are ignored; this is the selection criteria. The rest of the code is just your basic loop iterating code. 

# we can apply these same concepts to transformation. Lets again take a look at a simple array and loop through it, but with one addition: the modification of appending an 's' to each string in the array. 

fruits = ['apple', 'banana', 'pear']
transformed_elements = []
counter = 0 # <-- counter

loop do # <-- loop 
  current_element = fruits[counter] # <-- way to retrieve current value. 

  transformed_elements << current_element + 's' # appends transformed string into array 

  counter += 1 # <-- counter 
  break if counter == fruits.size # <-- way to break the loop. 
end 

p transformed_elements # => ["apples", "bananas", "pears"]
p fruits # => ["apple", "banana", "pear"]

# since we are applying the transformation to every element in the array, we dont need an in condition, but the entire line is the transformation criteria. Note that, in this example, we perform the transformation on a new array and leave the original array unchanged. 

#IMPORTANT: When performing transformation, its always important to pay attention to whether the original clollection was mutated or if a new collection was returned. 

# Extracting to Methods

# Most of the time, selecting or transforming a collection is a very specific action -- select all the odd numbers, turn all the elements into strings, etc -- which naturally lends the specific action being extracted into convenience methods. 

# say for example we wanted to be able to select all the vowels in a given string. We're going to use the helpful String#inclue? method here to assist us in determining wethera character is a vowel. 

def select_vowels(str)
  selected_chars = ''
  counter = 0

  loop do
    current_char = str[counter]

    if 'aeiouAEIOU'.include?(current_char)
      selected_chars << current_char
    end 
    
    counter += 1 
    break if counter == str.size
  end 
  
  selected_chars
end

p select_vowels("el coleto se cayo del bus y se dio que cule matada.")

# note that when the method is done iterating, it returns a new collection containing the selected values. In this case, our select_vowels method returns a new string. 

# This means we can call other metods on that return value. 

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruits(produce_list)
  selected_fruits = {}
  counter = 0 # <-- counter
  produce_keys = produce_list.keys

  loop do # <-- loop 
    # this has to be at the top in case the produce_list is an empty hash. 
    break if counter == produce_keys.size # <-- way to break the loop

    current_key = produce_keys[counter]
    current_value = produce_list[current_key] # <-- way to retrieve the current values and keys. 

    if current_value == 'Fruit' # <-- selection criteria 
      selected_fruits[current_key] = current_value
    end
    
    counter += 1 # <-- counter 
  end 
  
  selected_fruits
end

p select_fruits(produce)
p fruits

# note that this method did not mutate the original fruits hash. 

# Transformation examples, here the entire transformation code is within a method definition. The code below multiplies each element in the collection by 2. 

def double_numbers(numbers)
  doubled_numbers = []
  counter = 0 

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * 2 

    counter += 1 
  end 
  
  doubled_numbers
end

my_numbers = [1,4,3,7,2,6]
p double_numbers(my_numbers)
p my_numbers

# note that this method did not mutate the original my_numbers array.

# if we wanted to mutate the original array we would write our code this way instead: 

def double_number!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    numbers[counter] = current_numbers * 2

    counter += 1
  end 
  
  numbers
end 

# note: Rather than returning a new array, this method returns a reference to the (mutated) original array. 

# lines 7 and 8 can be shortened to 1 line: numbers[counter] = numbers[counter] * 2. this, in turn, can be further condensed to numbers[counter] *= 2.

# it was previously stated that transformation is an operation that is performed on every element in the collection. In the next example, we'll study a method that only transforms a subset of elements in the collection. Here, we only multiply by 2 if the value is odd. The if condition will only evaluate to true if current) number is odd(we check this using integer#odd?).

def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0 

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if current_number.odd?
    doubled_numbers << current_number

    counter += 1 
  end 

  doubled_numbers
end

my_numbers = [1,4,3,7,2,6]
p double_odd_numbers(my_numbers)

# More Flexible Methods

# The examples we've looked at so far have taken one argument( the collection to be iterated over) and performed one operation to that collection. By defining our methofs in such a way that we can pass in additional arguments to alter the logic of the iteration, we can create more flexible and generic methods. 

# Recall earlier we wrote a select_fruit method that selected fruits out of the produce_list hash of fruits and vegetables. Suppose we wish to now write a more generic general_select method so that we can specify whether we're interested in selecting fruits or vegetables. Here's how we could build such a method: 

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def general_select(produce_list, selection_criteria)
produce_keys = produce_list.keys
counter = 0 
selected_produce = {}

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys.size
    current_value = produce_list[current_key]

    # used to be current_value == 'Fruit'

    if current_value == selection_criteria
      selected_produce[current_key] = current_value
    end
    
    counter += 1
  end

selected_produce

end

general_select(produce, "Fruit") # --> {"apple" => "Fruit", "pear" => "Fruit"}

general_select(produce, "Vegetable") # --> {"carrot" => "Vegetable", "broccoli" => "Vegetable"}




