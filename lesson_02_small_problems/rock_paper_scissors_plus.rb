require 'pry'

VALID_CHOICES = {
  r: 'rock',
  p: 'paper',
  sc: 'scissors',
  l: 'lizard',
  sp: 'spock'
}

WINNING_CHOICES = {
  'rock' => ['lizard', 'scissors'],
  'lizard' => ['spock', 'paper'],
  'spock' => ['rock', 'scissors'],
  'scissors' => ['paper', 'lizard'],
  'paper' => ['rock', 'spock']
}

GAMES_IN_MATCH = 5

def display_menu
  menu = ''

  VALID_CHOICES.each do |abbr, full|
    menu += "#{abbr} for #{full}\n"
  end

  prompt("Choose one:")
  puts menu
end

def prompt(message)
  print "=> #{message}\n"
end

def win?(first, second)
  WINNING_CHOICES[first].include?(second)
end

def result(player, computer)
  if win?(player, computer)
    'won'
  elsif win?(computer, player)
    'lost'
  else
    'tie'
  end
end

user_wins = 0
user_losses = 0

# Game loop
loop do
  choice = ''
  loop do
    display_menu
    choice = gets.chomp.to_sym
    break if VALID_CHOICES.keys.include?(choice)
    prompt("That's not a valid choice\n")
  end

  choice = VALID_CHOICES[choice]

  computer_choice = VALID_CHOICES.values.sample

  prompt("You chose: #{choice}; computer chose: #{computer_choice}\n")

  case result(choice, computer_choice)
  when 'won'
    prompt("You win!\n")
    user_wins += 1
  when 'lost'
    prompt("You lost!\n")
    user_losses += 1
  else
    prompt("It's a tie!\n")
  end

  prompt("Your Wins: #{user_wins}; Your Losses: #{user_losses}\n")

  ask_to_play_again = false

  if user_wins == GAMES_IN_MATCH
    prompt("You won the Master Round!\n")
    ask_to_play_again = true
  elsif user_losses == GAMES_IN_MATCH
    prompt("The computer won the Master Round!\n")
    ask_to_play_again = true
  end

  if ask_to_play_again
    prompt("Do you want to play again? (Y/N)")
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end
end

prompt("Thank you playing. Goodbye!")
