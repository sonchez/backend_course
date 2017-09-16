require 'pry'
def word_sizes(string)
  word_hash = {}
  num = 0
  string.gsub(/[^a-zA-Z0-9\s]/, '').split(" ").map do |word|

    if word_hash.key?(word.length)
      word_hash[word.length] += 1
    else
      word_hash[word.length] = 1
    end
  end
p word_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}