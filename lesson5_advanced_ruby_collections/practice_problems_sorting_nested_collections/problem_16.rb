def uuid
  a = code_generator(8).join("")
  b = code_generator(4).join("")
  c = code_generator(4).join("")
  d = code_generator(4).join("")
  e = code_generator(12).join("")
   uuidarray = a + b + c + d + e
   uuidarray.chomp[0..-2]
end

def code_generator(size)
  alphabet = *("a".."z")

  numdecision = Array.new(size) {rand(1..9)}

  numdecision.map! do |element|
    random = rand(1..2)
    if random == 1
      element = alphabet.sample
    else element = element
    end
  end

  numdecision << "-"

end

p uuid