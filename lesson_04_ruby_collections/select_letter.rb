def select_letter(sentence, character)
  selected_chars = ''
  counter = 0

  loop do
    break if counter == sentence.size
    current_char = sentence[counter]

    selected_chars << current_char if current_char == character
    counter += 1
   end

   selected_chars
end


question = 'How many times does a particular character appear in this sentence?'
p question
p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""
