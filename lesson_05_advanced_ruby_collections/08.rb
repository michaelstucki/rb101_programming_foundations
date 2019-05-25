hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = []
hsh.each do |_, words|
  words.each do |word|
    index = 0
    while index < word.length
      char = word[index]
      vowels << char if 'aeiou'.include?(char.downcase)
      index += 1
    end
  end
end

p vowels 
