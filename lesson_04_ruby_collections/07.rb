statement = "The Flintstones Rock"
puts statement

# Method 1
letter_frequency = Hash.new(0)
statement.chars.each do |char|
  letter_frequency[char] += 1
end
p letter_frequency

