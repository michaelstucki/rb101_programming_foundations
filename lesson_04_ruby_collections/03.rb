ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
p ages

# Method 1
ages_young = {}
ages.each { |name, age| ages_young[name] = age if age < 100 }
p ages_young

# Method 2
ages_young = {}
counter = 0
keys = ages.keys
loop do
  break if counter == keys.size
  ages_young[keys[counter]] = ages[keys[counter]] if ages[keys[counter]] < 100
  counter += 1
end
puts ages_young

# Method 3
ages.select! { |_, age| age < 100 }
puts ages

