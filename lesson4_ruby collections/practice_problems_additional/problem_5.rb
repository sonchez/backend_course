flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.rindex {|k,v| k.start_with?("Be")}
