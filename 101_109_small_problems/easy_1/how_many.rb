vehicles = ['car','car','truck','car','suv','truck','motorcycle','motorcycle','car','truck']
#first try hard mode
def automobile_counter(vehicles)
  vehiclehash = {}
  list = vehicles.sort
  countingnumber = 0
  while list.length > 0
    countingword = list.pop
    if vehiclehash.has_key?(countingword) == true
      vehiclehash[countingword] = countingnumber+1
      countingnumber = countingnumber+1
    elsif vehiclehash.has_key?(countingword) == false
      countingnumber = 0
      vehiclehash[countingword]
      vehiclehash[countingword] = countingnumber+1
      countingnumber = countingnumber+1
    end
  end
  puts
  vehiclehash.each {|k,v| puts "#{k}, #{v}"}
end


#second try easier now that i understand
def counter(vehicles)
  vehiclehash = {}
  list = vehicles
  list.count {|word| vehiclehash[word] = list.count(word)}
  puts
  vehiclehash.each {|k,v| puts "#{k}, #{v}"}
end
automobile_counter(vehicles)
counter(vehicles)