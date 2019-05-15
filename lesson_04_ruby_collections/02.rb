ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
p ages

# Method 1
sum = 0
ages.each { |_, age| sum += age }
puts sum

# Method 2
sum = ages.values.sum
puts sum

# Method 3
sum = 0
counter = 0
keys = ages.keys
loop do
  break if counter == ages.size
  sum += ages[keys[counter]]
  counter += 1
end
puts sum

# Method 4
sum = ages.values.reduce(:+)
puts sum
