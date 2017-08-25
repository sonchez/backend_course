hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
array = "aeiou"

hsh.each do |name,stringarray|
  stringarray.each do |words|
    words.chars.each do |letters|
      if array.include?(letters)
        puts letters
      end
    end
  end
end
