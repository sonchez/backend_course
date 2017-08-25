arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
hsh = {}
hsh = arr.select do |hashes|
  hashes.all? do |key, value|
    value.all? do |word|
      p word
      word.even?
    end
  end
end

p hsh