def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
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

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  initial_sum = deal_card + deal_card
  display_card_total(initial_sum)
  initial_sum
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  until (user_input == "s" || user_input == "h")
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  card_total += deal_card if user_input == "h"
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  card_total = 0
  welcome
  until card_total > 21
    card_total += initial_round
    hit?(card_total)
  end
end_game(card_total)
end
    
