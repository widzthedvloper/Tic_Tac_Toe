#!/usr/bin/env ruby

require_relative '../lib/logic'
require_relative '../lib/winner'

puts 'INSTRUCTIONS'
puts '---------------------------------------------------'
puts 'A number represents each square spaces on the board'
puts 'from 1 up to 9. To make a move specifies a number'
puts 'in the range of possible numbers at each step into'
puts 'Once a player made a move it automatically become an invalid move'
puts 'the game. It\'s that simple :). Enjoy!!!'

puts 'Introduce the name of the first player.'
player_one = gets.chomp

puts 'Introduce the name of the second player'
player_two = gets.chomp

wins = false
start = 2

print_initial_board = Moves.new
puts print_initial_board.print_board[0].to_s
puts print_initial_board.print_board[1].to_s
puts print_initial_board.print_board[2].to_s

while start < 11

  if start.even?
    current_player = player_one
    puts "#{current_player} turn"
    player_one_turn = gets.chomp.to_i
    check_invalid = Moves.new
    check = check_invalid.invalid_check(player_one_turn)
    if player_one_turn > 9
      puts 'Sorry, you\'ve made a wrong move!'
      start -= 2
      next
    end
    if player_one_turn < 1
      puts 'Sorry, you\'ve made a wrong move!'
      start -= 2
      next
    end
    if check == true
      puts 'Sorry, you\'ve made a wrong move!'
      start -= 2
      next
    end
    move = Moves.new
    move.player_move(player_one_turn, 'x')
    move.update_invalid_moves(player_one_turn)
  else
    current_player = player_two
    puts "#{current_player} turn"
    player_two_turn = gets.chomp.to_i
    check_invalid = Moves.new
    check = check_invalid.invalid_check(player_two_turn)
    if player_two_turn > 9
      puts 'Sorry, you\'ve made a wrong move!'
      start -= 2
      next
    end
    if player_two_turn < 1
      puts 'Sorry, you\'ve made a wrong move!'
      start -= 2
      next
    end
    if check == true
      puts 'Sorry, you\'ve made a wrong move!'
      start -= 2
      next
    end
    move = Moves.new
    move.player_move(player_two_turn, 'o')
    move.update_invalid_moves(player_two_turn)
  end

  print_initial_board = Moves.new
  puts print_initial_board.print_board[0].to_s
  puts print_initial_board.print_board[1].to_s
  puts print_initial_board.print_board[2].to_s
  puts 'List of invalid moves'
  puts print_initial_board.print_invalid_moves.to_s

  game_winner = Winner.new
  wins = game_winner.check_winner(print_initial_board.print_board)

  if wins
    puts "#{current_player} is the winner!"
    break
  end

  start += 1

end

puts "there's a draw" if wins == false
puts player_one_turn
puts player_two_turn
