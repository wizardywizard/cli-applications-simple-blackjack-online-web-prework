require "pry"
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 1+rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  num = deal_card + deal_card
  display_card_total(num)
  return num
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  num = 0
  if user_input == "h"
  num = card_total + deal_card
  elsif user_input == "s"
  card_total
  else
   invalid_command
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
  card_total = initial_round
  until card_total > 21 do
 card_total = hit?(card_total)
 display_card_total(card_total)
  end
end_game(card_total)
end
    
