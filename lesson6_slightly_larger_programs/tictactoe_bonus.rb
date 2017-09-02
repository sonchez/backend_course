require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
WHO_GOES_FIRST = ['player','computer','choose']
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
player_counter = 0
computer_counter = 0

def prompt(msg)
  puts "=> #{msg}"
end

def win_counter(player,computer)
  puts "The current score is player: #{player} - Computer: #{computer}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd,player,computer)
  system 'clear'
  system 'cls'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts "The current score is Player: #{player} - Computer: #{computer}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"       # 1 2 3
  puts "     |     |"
  puts "-----+-----+------"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+------"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"       # 7 8 9
  puts "     |     |"
end
# rubocop:enable Metrics/AbcSize

def intitialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(brd, punctuation = ", ",conjunction = "or") # empty_squares(brd)
  if brd.count > 3
    slice_element = brd.slice!(-1)
    brd.push(conjunction)
    brd.push(slice_element)
  end
  brd.join(punctuation)
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that is not a valid choice"
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def pick_five_first(brd)
  WINNING_LINES.each do |line|
    if line.include?(5) == true
      if brd[line[1]] == ' '
        return brd[line[1]] = COMPUTER_MARKER
      end
    end
  end
  nil
end



def ai_choice(brd)
  WINNING_LINES.each do |line|
    next if brd.values_at(*line).count(' ') == 0
    if brd.values_at(*line).count(PLAYER_MARKER) == 2
      symbol = brd.values_at(*line).index {|element| element == " "}
      return brd[line[symbol]] = COMPUTER_MARKER
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 2
      symbol = brd.values_at(*line).index {|element| element == " "}
      return brd[line[symbol]] = COMPUTER_MARKER
    end
  end
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end


def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def place_piece!(brd,player)
  if player == WHO_GOES_FIRST[0]
    player_places_piece!(brd)
  elsif player == WHO_GOES_FIRST[1]
    if pick_five_first(brd) == nil
      ai_choice(brd)
    else
      pick_five_first(brd)
    end
  end
end

def alternate_player(player)
  if player == WHO_GOES_FIRST[0]
    player = WHO_GOES_FIRST[1]
  elsif player == WHO_GOES_FIRST[1]
    player = WHO_GOES_FIRST[0]
  end
end

current_player = WHO_GOES_FIRST[2]


while current_player == WHO_GOES_FIRST[2]
  prompt "Please choose if the player or computer will move first! ('player' or 'comp')."
  answer = gets.chomp.downcase
  if answer == 'player'
    current_player = WHO_GOES_FIRST[0]
  elsif answer == 'comp'
    current_player = WHO_GOES_FIRST[1]
  else
    prompt "Invalid answer. Please choose 'player' or 'computer'."
  end
end

loop do
  board = intitialize_board

    loop do
      display_board(board,player_counter,computer_counter)
      place_piece!(board,current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board,player_counter,computer_counter)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won the round!"
  else
    prompt "It's a tie!"
  end

  if detect_winner(board) == 'Player'
    player_counter += 1
  elsif detect_winner(board) == 'Computer'
    computer_counter += 1
  end

  if computer_counter == 5
    puts
    prompt "Computer wins the match!!"
  elsif player_counter == 5
    puts
    prompt "Player wins the match!!"
  end


  break if player_counter == 5 || computer_counter == 5

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
prompt "Game Over!"
puts
prompt "Thanks for playing tic tac toe. Goodbye!"
