flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones

index = 0
loop do
  break if index == flintstones.size
  puts index if flintstones[index][0, 2] == 'Be'
  index += 1
end

# Method 2
index = flintstones.find_index { |name| name[0, 2] == 'Be'}
puts index

# Method
index = flintstones.index { |name| name[0, 2] == "Be" }
puts index
