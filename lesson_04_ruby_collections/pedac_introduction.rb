require 'pry'

# PROBLEM:
#
# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.
#
# Test cases:
#
# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []
#
# Some questions you might have:
# 1. What is a substring?
# 2. What is a palindrome?
# 3. Will inputs always be strings?
# 4. What does it mean to treat palindrome words case-sensitively?
#
# input: string
# output: an array of substrings
# rules:
#      Explicit requirements:
#        - return only substrings which are palindromes.
#        - palindrome words are case sensitive; "abBA"
#          is not a palindrome.

def get_others(index, root, string, results)
  loop do
    if string[index - 1] == string[index + root.size]
      root = string[index - 1] + root + string[index + root.size]
      results << root
      index -= 1
    else
      return
    end
  end
end

def palindrome_substrings(string)
  results = []

  roots= {}
  index = 0
  while index < string.size - 1
    roots[index] = string[index, 2] if string[index] == string[index + 1]
    index += 1
  end

  index = 0
  while index < string.size - 2
    roots[index] = string[index, 3] if string[index] == string[index + 2]
    index += 1
  end

  roots.each do |index, root|
    results << root
    get_others(index, root, string, results)
  end
  results
end

puts palindrome_substrings("abcddcbA") == ["dd", "cddc", "bcddcb"]
puts palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
puts palindrome_substrings("palindrome") == []
puts palindrome_substrings("") == []

