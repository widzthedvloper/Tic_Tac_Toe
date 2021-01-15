# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity
# rubocop:disable Metrics/AbcSize
# rubocop:disable Style/ClassVars
# rubocop:disable Layout/LineLength
# rubocop:disable Style/WordArray

class Moves
  @@board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  @@invalid_move = []

  def player_move(num, letter)
    case num
    when 1 then @@board[0][0] = letter
    when 2 then @@board[0][1] = letter
    when 3 then @@board[0][2] = letter
    when 4 then @@board[1][0] = letter
    when 5 then @@board[1][1] = letter
    when 6 then @@board[1][2] = letter
    when 7 then @@board[2][0] = letter
    when 8 then @@board[2][1] = letter
    when 9 then @@board[2][2] = letter
    end
  end

  def print_board
    @@board
  end

  def update_invalid_moves(num)
    @@invalid_move.push(num)
  end

  def print_invalid_moves
    @@invalid_move
  end

  def invalid_check(num)
    @@invalid_move.include?(num)
  end
end

class Winner
  def check_winner(array)
    @array1 = ['x', 'x', 'x']
    @array2 = 'x'
    @array3 = ['o', 'o', 'o']
    @array4 = 'o'

    if array[0] == @array1 || array[1] == @array1 || array[2] == @array1 || array[0] == @array3 || array[1] == @array3 || array[2] == @array3
      true
    elsif (array[0][0] == @array2 && array[1][0] == @array2 && array[2][0] == @array2) || (array[0][1] == @array2 && array[1][1] == @array2 && array[2][1] == @array2) || (array[0][2] == @array2 && array[1][2] == @array2 && array[2][2] == @array2)
      true
    elsif (array[0][0] == @array4 && array[1][0] == @array4 && array[2][0] == @array4) || (array[0][1] == @array4 && array[1][1] == @array4 && array[2][1] == @array4) || (array[0][2] == @array4 && array[1][2] == @array4 && array[2][2] == @array4)
      true
    else
      false
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Metrics/AbcSize
# rubocop:enable Style/ClassVars
# rubocop:enable Layout/LineLength
# rubocop:enable Style/WordArray
