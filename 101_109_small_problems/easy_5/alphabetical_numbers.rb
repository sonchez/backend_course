require 'pry'
NUMBER_ARRAY = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'] +
['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'ninteen']


def alphabetic_number_sort(num_array)
    final_array = []
    final_array = num_array.sort {|word, word2| NUMBER_ARRAY[word] <=> NUMBER_ARRAY[word2]}
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0
]