#!/usr/bin/env ruby

puts 'INSTRUCTIONS'
puts '---------------------------------------------------'
puts 'A number represents each square spaces on the board'
puts 'from 1 up to 9. To make a move specifies a number'
puts 'in the range of possible numbers at each step into'
puts 'the game. It\'s that simple :). Enjoy!!!'

puts 'Introduce the name of the first player.'
player_one = gets.chomp

puts 'Introduce the name of the second player'
player_two = gets.chomp
board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
wins = false
start = 2

# now i'll display the board and an array whith each available moves

while start < 11

  # here a methode will be responsible to display the board after each player's move.
  # the board will display after each player,s move except for the first time we start.

  puts board[0].to_s
  puts board[1].to_s
  puts board[2].to_s

  if start.even?
    current_player = player_one
    puts "#{current_player} turn"
    player_one_turn = gets.chomp.to_i
  else
    current_player = player_two
    puts "#{current_player} turn"
    player_two_turn = gets.chomp.to_i
  end

  # here instead of using the if that way i'll check if the number i got from the player
  # input is included in the array of possible moves left i'll create later
  # same for each player

  puts 'Oups! you made a wrong move' if player_one_turn < 1 && player_one_turn > 9

  puts board[0].to_s
  puts board[1].to_s
  puts board[2].to_s

  # here instead of checking for only the move each player make i'll check for
  # possible move left, rather the player enter a wrong move, and check the wins cases.

  if wins
    puts "#{current_player} is the winner!"
    break
  end

  start += 1

end

puts "there's a draw" if wins == false
puts player_one_turn
puts player_two_turn
