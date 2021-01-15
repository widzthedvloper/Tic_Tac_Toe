# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity
# rubocop:disable Metrics/AbcSize
# rubocop:disable Layout/LineLength
# rubocop:disable Style/WordArray

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
    elsif (array[0][0] == @array2 && array[1][1] == @array2 && array[2][2] == @array2) || (array[0][2] == @array2 && array[1][1] == @array2 && array[2][0] == @array2)
      true
    elsif (array[0][0] == @array4 && array[1][1] == @array4 && array[2][2] == @array4) || (array[0][2] == @array4 && array[1][1] == @array4 && array[2][0] == @array4)
      true
    else
      false
    end
  end
end

# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Metrics/AbcSize
# rubocop:enable Layout/LineLength
# rubocop:enable Style/WordArray
