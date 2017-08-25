a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

# Initial elements for arr would be 2,[5,8]
# arr[0] would be calling on the 0 index point
# += 2 would add 2 to it making that element be 4 now
# arr[1][0] would call the second element (the array)
# and then the first element of that array.
# then subtract the current value of a from it.
# this would make the value of 5 now 3.
