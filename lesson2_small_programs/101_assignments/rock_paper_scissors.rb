VALID_PLAYERS = %w(rock paper scissors lizard spock)

def prompt(message)
  puts
  puts("=> #{message}")
  puts "_______________________________________________________________"
  sleep(1.5)
end
# iterates over hash to see if key and value exist.
# ------------------------------------------------------------
winner_loser_hash =
  {
    scissors: ['paper', 'lizard'],
    paper: ['rock', 'spock'],
    rock: ['lizard', 'scissors'],
    lizard: ['spock', 'paper'],
    spock: ['scissors', 'rock']
  }

def win?(first, second, winhash)
  winner_loser_hash = winhash
  answer = ''
  winner_loser_hash.select do |k, v|
    if k.to_s == first
      answer = v.include?(second)
    end
    answer
  end
  answer
end
# Uses Boolean as switch for point distribution.
# ------------------------------------------------------------
win = true
def display_results(player, computer, winhash)
  if win?(player, computer, winhash)
    win = true
    prompt "You won!"
  elsif win?(computer, player, winhash)
    win = false
    prompt "Computer won!"
  else
    prompt "It's a tie"
  end
  win
end
# takes player choice shorthand and converts it.
# ------------------------------------------------------------
def player_choice_translator(player)
  case
   when player == 'sc'
    player = 'scissors'
  when player == 'p'
    player = 'paper'
  when player == 'r'
    player = 'rock'
  when player == 'l'
   player = 'lizard'
  when player == 'sp'
    player = 'spock'
  else
    player = player
  end
end
# Main Loop Start
# ------------------------------------------------------------
round_number = 1
response = ''
player_win_count = 0
computer_win_count = 0
loop do
  system 'clear'
  system 'cls'
  # Nested Input Loop
  # ------------------------------------------------------------
  player = ''
  loop do
    prompt "This is a first to five game.
   You are on round #{round_number}."
    prompt "Choose one: #{VALID_PLAYERS.join(', ')}
   or type 'exit' to leave game!"
    player = gets.downcase.chomp
    player = player_choice_translator(player)
    if player == 'exit'
      prompt "Thank you for playing"
      exit
    elsif VALID_PLAYERS.include?(player)
      break
    else
      prompt("That's not a valid player.")
    end
  end
  # Computers choice and both player choices output
  # ------------------------------------------------------------
  computer = VALID_PLAYERS.sample

  prompt "You chose: #{player},
   Computer chose: #{computer}"

  win = display_results(player, computer, winner_loser_hash)
  # Nested Player Points Case Statement
  # ------------------------------------------------------------
  case win
  when true
    player_win_count += 1
    prompt "Player 1 points: #{player_win_count}
   Player 2 points: #{computer_win_count}"
  when false
    computer_win_count += 1
    prompt "Player 1 points: #{player_win_count}
   Player 2 wins: #{computer_win_count}"
  else
    prompt "No points awarded!"
  end
  round_number += 1
  system 'clear'
  system 'cls'
  # Break Conditions
  # ------------------------------------------------------------
  if (player_win_count == 5) || (computer_win_count == 5)
    prompt("Would you like to play again?' Press 'y' to continue" )
    response = gets.downcase.chomp
    break unless response == 'y'
  end
end

prompt('Thank you for playing. Good bye!')
