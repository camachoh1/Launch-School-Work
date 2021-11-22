# what do you expect to happen when the greeting variable is referenced in the las line of the code below? 

if false
  greeting = "hello world"
end 

p greeting

# this code will return nil. 

# LS answer: Tipically, when you reference an uninitialized variable, Ruby will raise an exception, stating that it's undefined. However, when you initialize a local variable within an if block, even if that if block doesnt get executed, the local variable is initialized to nil. 