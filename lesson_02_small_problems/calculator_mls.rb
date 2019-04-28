=begin
Build a command line calculator program that does the following:
  asks for two numbers
  asks for the type of operation to perform: add, subtract, multiply or divide
  displays the result
=end

puts "Enter two numbers:"
num1 = gets.chomp.to_f
num2 = gets.chomp.to_f

puts "Enter arithmetic operation (+, -, *, /):"
operation = gets.chomp

case operation
when '+'
  result = num1 + num2
when '-'
  result = num1 - num2
when '*'
  result = num1 * num2
when '/'
  result = num1 / num2
end

puts result

