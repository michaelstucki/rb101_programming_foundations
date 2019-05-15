def titleize(string)
  string_title = []
  string.split.each do |word|
    string_title << word.capitalize
  end
  string_title.join(' ')
end

def titleize(string)
  string.split.map { |word| word.capitalize }.join(' ')
end

words = "the flintstones rock"
puts words

puts titleize(words)

