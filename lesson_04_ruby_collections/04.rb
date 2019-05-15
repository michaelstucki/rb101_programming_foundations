ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
p ages

# Method 1
minimum_age = ages.values.sort[0]
puts minimum_age

# Method 2
minimum_age = ages.values.min
puts minimum_age

# Method 3
values = ages.values
minimum_age = values[0]
counter = 1
loop do
  break if counter == values.size
  minimum_age = values[counter] if values[counter] < minimum_age
  counter += 1
end
puts minimum_age

