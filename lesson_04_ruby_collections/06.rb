flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones

# Method 1
index_outer = 0
index_inner = index_outer + 1
loop do
  break if index_outer == flintstones.size - 1
  loop do
    break if index_inner == flintstones.size
    if flintstones[index_outer][0, 3] > flintstones[index_inner][0, 3]
      tmp = flintstones[index_outer]
      flintstones[index_outer] = flintstones[index_inner]
      flintstones[index_inner] = tmp
    end
    index_inner += 1
  end
  index_outer += 1
  index_inner = index_outer + 1
end
p flintstones

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones

# Method 2
flintstones.sort { |a, b| b[0, 3] <=> a[0, 3] }
p flintstones 
