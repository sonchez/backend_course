loop do
  display_board(board)
  place_piece!(board,current_player)
  current_player = alternate_player(current_player)
  break if someone_won?(board) || board_full?(board)
end

def place_piece!(brd,player)
  if player == WHO_GOES_FIRST[0]
    player_places_piece!(board)
  elsif player == WHO_GOES_FIRST[1]
    if pick_five_first(board) == nil
      ai_choice(board)
    else
      pick_five_first(board)
    end
end

def alternate_player(player)
  if player == WHO_GOES_FIRST[0]
    player = WHO_GOES_FIRST[1]
  elsif player == WHO_GOES_FIRST[1]
    player = WHO_GOES_FIRST[0]
  end
end
