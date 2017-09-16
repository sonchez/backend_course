def triangles(number_of_stars)
totalnum = 1
paddedspace = ' '
paddedspacecounter = number_of_stars
star = '*'
  while totalnum <= number_of_stars
    puts "#{(paddedspace * paddedspacecounter)} #{(star * totalnum)}"
    totalnum +=1
    paddedspacecounter -=1
  end
end

triangles(5)
triangles(9)
triangles(20)