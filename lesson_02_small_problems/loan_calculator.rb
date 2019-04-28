# loan_calculator.rb

require 'pry'
require 'yaml'
MESSAGES = YAML.load_file('loan_calculator_messages.yml')

def show_prompt(message)
  print "=> Enter #{message}: "
end

def valid_number?(num)
  true if Float(num)
rescue
  false
end

def get_number(message)
  loop do
    show_prompt(message)
    number = gets.chomp

    if valid_number?(number)
      number = number.to_f
      return number if number > 0
    end

    puts MESSAGES['invalid_number']
  end
end

puts MESSAGES['welcome']

loop do
  loan = get_number("loan_amount")
  rate_yearly = get_number("APR as percentage")
  term_years = get_number("loan duration in years")

  rate_yearly /= 100
  rate_monthly = rate_yearly / 12
  term_months = term_years * 12

  mortgage = loan * (rate_monthly / (1 - (1 + rate_monthly)**-term_months))
  puts "Your montly payment is: $#{format('%02.2f', mortgage)}"

  show_prompt(MESSAGES['continue'])
  break if !gets.chomp.downcase.start_with?('y')
end

puts MESSAGES['farewell']
