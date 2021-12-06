# from the following two implementations, take tour pick. do you like << or + for modifiying the buffer?. is there a difference between the two other than what operators were used to add an element to the buffer?

# def rolling_buffer1(buffer, max_buffer_size, new_element)
#   buffer << new_element
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end



# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# notes: based on my analisis the two operators bring different ways to get the result mainly because << is a mutable operator, meaning every time it shuffles elements from the buffer it changes it permanently. + on the other hand, allows the buffer to stay in its original state while creating changes. 

# another difference I notice is that the scond method implements an array as the buffer. the new elements are added to the array using concatenation. 

# LS answer: Yes, there is a difference. While both methods have the same return value, n the first implementation, the input argument called buffer will be modified and will end up being changed aftee rolling_buffer1 returns. That is, the caller will have the input array that they pass in be different once the call returns. In the other implementation, rolling_buffer2 will not alter the caller's input argument. 

#NOTE for future: I would review this exercise one more time in order to make sure I understand well how the program works when testing. I was able to come up to the right conclussions but in all honesty, I can quite understan how to test the method since I am still unsure what kind of objects should I pass as arguments, integers? strings? that's what I would need to further study. Very simple, but it is not allowing me to have a full understanding of the program. 