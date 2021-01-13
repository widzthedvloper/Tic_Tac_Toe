#!/usr/bin/env ruby
puts 'Hello world!'

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
start = 1

# now i'll display the board and an array whith each available moves
while start.positive?

  # here a methode will be responsible to display the board after each player's move.
  # the board will display after each player,s move except for the first time we start.

  puts '- - -'
  puts '- - -'
  puts '- - -'

  puts 'The list of possible moves is: 1 2 3 4 5 6 7 8 9'

  puts 'Player one\'s turn!'
  player_one_turn = gets.chomp.to_i

  puts 'player two\'s turn'
  player_two_turn = gets.chomp.to_i
  # here instead of checking for only the move each player make i'll check for
  # possible move left, rather the player enter a wrong move, and check the wins cases.

  winner = if player_one_turn == 1

             "#{player_one} wins!"

           elsif player_two_turn == 2

             "#{player_two} wins!"

           else

             'draw :( !'

           end

  winner != ' ' ? break : next

end

puts winner
