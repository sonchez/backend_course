name = 'bob'
# the variable name is now referencing the
# string 'bob'.
save_name = name
# the variable of save_name is now referencing the same object
# as name. Currently this is the string 'bob'.
name.upcase!
# the upcase! is a mutator that permanently mutates
# the contents of name, if applicable.
puts name, save_name
# the mutator modifies the object, the string 'bob'.
# since both variables are still referencing 'bob'
# they both return the same value.
# this is because the upcase! mutation is a permanent
# mutation of the object.

