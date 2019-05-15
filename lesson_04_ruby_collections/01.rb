flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
p flintstones

# Method 1
hash = {}
flintstones.each_with_index { |name, index| hash[name] = index }
p hash

# Method 2
hash = {}
counter = 0
loop do
  break if counter == flintstones.size
  hash[flintstones[counter]] = counter
  counter += 1
end
p hash
