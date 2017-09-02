
require 'pry'
CARD_VALUE = [2,3,4,5,6,7,8,9,10,'jack','queen','king','ace']
card_taken = [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ']

master_hand = {
  heart: card_taken.dup,
  diamonds: card_taken.dup,
  clubs: card_taken.dup,
  spades: card_taken.dup
}

player_hand = {
  heart: card_taken.dup,
  diamonds: card_taken.dup,
  clubs: card_taken.dup,
  spades: card_taken.dup
}

computer_hand = {
  heart: card_taken.dup,
  diamonds: card_taken.dup,
  clubs: card_taken.dup,
  spades: card_taken.dup
}

TAKEN_MARKER = 'X'

def face_cards_value(card)
  case
    when 'ace'
      11
    when 'king'
      10
    when 'queen'
      10
    when 'jack'
      10
    else
      return
    end
end


# THIS DEALS THE CARDS AND KEEPS TRACK OF REMAINING CARDS. IT WORKS PERFECTLY. DONT FUCKING TOUCH IT
def deal_card(deck,card_values)
    suites = deck.map {|k,v| k}
    suite_choice = suites[rand(0..3)]
    value = card_values[rand(0..12)]
    value_index = card_values.index(value)
    while deck[suite_choice].values_at(value_index).count(TAKEN_MARKER) == 1

      suite_choice = suites[rand(0..3)]
      value_index = card_values[rand(0..12)]
    end
    deck[suite_choice][value_index] = TAKEN_MARKER

    deck[suite_choice][value_index] = TAKEN_MARKER
end

def deck_merge(master,player,computer)
  counter = 0
  keyarray = player.keys
  keyarray.each do |key|
    master[key].merge(player[key])
  end
  master
end

# main loop
deal_card(player_hand,CARD_VALUE)
deal_card(player_hand,CARD_VALUE)

deck_merge(master_hand,player_hand,computer_hand)




puts "PLAYER HAND"
puts player_hand
puts '-----------------'
puts '------------------'
puts '------------------'
puts 'MASTER HAND'
puts master_hand


