array_of_hashes = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
increased_array = array_of_hashes.map do |hashes|
  hashes.each do |k,v|
    hashes[k] += 1
  end
end

p increased_array