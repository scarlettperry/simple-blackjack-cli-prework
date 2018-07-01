def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand (1...11)
end

def display_card_total (total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game (total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  deal_card
  deal_card
  display_card_total ()
  deal_card + deal_card
end

def hit? (total)
  prompt_user
  input = get_user_input
  total
  if input == "h"
    total + deal_card
  elsif input == "s"
    total
  else
    invalid_command
    prompt_user
    total
  end 
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  hit?
  display_card_total (total)
  until toal > 21
    hit?
    display_card_total (total)
  end 
end_game
end
    
