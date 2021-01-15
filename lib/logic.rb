# rubocop:disable Metrics/CyclomaticComplexity

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

# rubocop:enable Metrics/CyclomaticComplexity
