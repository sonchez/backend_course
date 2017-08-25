munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, contents|
  if contents["age"] <= 17
    contents["age_group"] = "kid"
  elsif contents["age"] >= 65
    contents["age_group"] = "senior"
  else
    contents["age_group"] = "adult"
  end
end

puts munsters