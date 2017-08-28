def game_functions(brd, displayer,player,won,full,scan,choice)
    displayer(brd,count_player,count_comp)

    player
    break if won || full

    if scan != nil
      next
    end

    choice(brd)
    break if won || full
  end

    game_functions(board,display_board(board,player_counter,computer_counter),player_places_pieces!(board),someone_won?(board),board_full?(board),ai_choice(board))