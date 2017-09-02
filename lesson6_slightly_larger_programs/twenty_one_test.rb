
require 'pry'

player_hand = []
dealer_hand = []
used_cards =  []
card_suites = [:hearts,:diamonds,:clubs,:spades]
card_values = [1,2,3,4,5,6,7,8,9,10]
special_cards = [:ace,:king,:queen,:jack]

ACTIVE_PLAYER = [player_hand,dealer_hand]

DEALER_DISTRACTIONS = ['picking his nose','thinking about dinner', 'mumbling to himself', '...he\'s just busy, ok!'] +
['counting cards, he\'s not doing a great job']

def prompt(msg)
  puts "----------------------------------------"
  prompt = puts " #{msg}"
end

def deal_cards(suites,values,special,player,used)
  suite_choice = suites[rand(0..3)]
  value_choice = values | special
  value_choice = value_choice[rand(0..12)]
  if used.include?([[value_choice, suite_choice]])
    deal_cards(suites,values,special,player,dealer,used)
  else
    player.concat([[value_choice, suite_choice]])
    used.concat([[value_choice, suite_choice]])
  end
end

def current_player(gambler)
  if gambler == ACTIVE_PLAYER[0]
    gambler = ACTIVE_PLAYER[1]
  elsif gambler == ACTIVE_PLAYER[1]
    gambler = ACTIVE_PLAYER[0]
  end
end

def sneak_a_peak(answer,dealer)
  case answer
  when 'yes'
    prompt "You sneak a glance at the dealers cards." +
    "He has a #{dealer[-1][0]} of #{dealer[-1][1]} "
    puts "Hmmm....."
  else
    prompt "wow...lame. moving on...."
  end
end

def look_at_hand(player)
  sum = []
   player.each do |array|
    if array[0].is_a?(Integer)
      sum.push(array[0])
    elsif array[0] == :jack
      sum.push(10)
    elsif array[0] == :queen
      sum.push(10)
    elsif array[0] == :king
      sum.push(10)
    elsif array[0] == :ace
      sum.push(10)
    else sum = sum
    end
  end
  sum.inject(:+)
end

def hit_or_stay
  loop do
    prompt "Do you want to hit or stay? ('stay' or 'hit')"
    answer = gets.chomp.downcase
    if answer == 'hit'
      return true
    elsif answer == 'stay'
      return false
    else "please choose 'hit' or 'stay'"
      next
    end
  end
end

active_gambler = ACTIVE_PLAYER[1]

prompt <<-MSG
      Welcome to the casino!

        This game is called 'Twenty-One!'.
        Number cards are worth their face value.
        The Jack, King, and Queen are worth 10.
        The Ace is worth 10 or 1 depending on your hand.
        If you total hand including the Ace exceeds 21,
        the ace is reduced to a value of 1
        Otherwise, it holds a value of 11.
        You are dealt two cards initially.
        Afterwords, you can choose to
        continue and recieve a new card (hit)
        or stay and compare cards with the dealer(stay).
        Whomever has a hand value closest to 21 wins.
        If you exceed 21 you lose.
        Have fun!

MSG
sleep(5)
system 'clear'
system 'cls'


loop do

  while dealer_hand.length == 0
    prompt "The dealer shuffles the deck and deals himself two cards"
    deal_cards(card_suites,card_values,special_cards,active_gambler,used_cards)
    deal_cards(card_suites,card_values,special_cards,active_gambler,used_cards)
    sleep(2)
    active_gambler = current_player(active_gambler)

    prompt "The dealer deals you two cards"
    deal_cards(card_suites,card_values,special_cards,active_gambler,used_cards)
    deal_cards(card_suites,card_values,special_cards,active_gambler,used_cards)
    sleep(2)

    prompt "Your current hand cards are #{player_hand}"
    prompt "The current total of your hand is #{look_at_hand(player_hand)}"
    active_gambler = current_player(active_gambler)
    sleep(2)

    prompt "The dealer is busy #{DEALER_DISTRACTIONS[rand(0..4)]}"
    prompt "Do you want to take this chance to look at his cards? ('yes' to look)"
    answer = gets.chomp.downcase
    sneak_a_peak(answer,dealer_hand)
  end

  break if hit_or_stay == false

  prompt "The dealer deals himself his cards"
  deal_cards(card_suites,card_values,special_cards,active_gambler,used_cards)
  active_gambler = current_player(active_gambler)
  sleep(1)


  prompt "The dealer deals you your card"
  deal_cards(card_suites,card_values,special_cards,active_gambler,used_cards)
  sleep(1)


  prompt "Your current hand cards are #{player_hand}"
  prompt "The current total of your hand is #{look_at_hand(player_hand)}"
  active_gambler = current_player(active_gambler)
  sleep(2)

  prompt "The dealer is busy #{DEALER_DISTRACTIONS[rand(0..4)]}"
  prompt "Do you want to take this chance to look at his cards? ('yes' to look)"
  answer = gets.chomp.downcase
  sneak_a_peak(answer,dealer_hand)
  break if hit_or_stay == false
end

puts "Ya broke out of the loop ya goof!"