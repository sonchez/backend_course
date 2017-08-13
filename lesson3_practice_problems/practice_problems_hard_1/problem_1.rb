if false
  greeting = "hello world"
end

p greeting

# all values outside of nil and false evaluate to True.
# Therefore this program will automatically default to true.
# This means the variable will not hold any value.
# this means the variable of greeting will be initialized within the method
# and the outer scope method will have a value of nil.
# This condition of the method only allows the variable to have the string object
# if the condition is met. It is neccesarily nil otherwise.
